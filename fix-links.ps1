#!/usr/bin/env pwsh
# Script to fix all markdown links after file reorganization

Write-Host "=== TianoCore Wiki Link Fixer ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Build a map of all markdown files (filename -> full path)
Write-Host "Step 1: Building file location map..." -ForegroundColor Yellow
$fileMap = @{}
$duplicates = @()

Get-ChildItem -Recurse -Filter "*.md" | ForEach-Object {
    $fileName = $_.Name
    $relativePath = $_.FullName.Replace((Get-Location).Path + '\', '').Replace('\', '/')
    
    if ($fileMap.ContainsKey($fileName)) {
        $duplicates += $fileName
        Write-Host "  WARNING: Duplicate filename found: $fileName" -ForegroundColor Red
        Write-Host "    Old: $($fileMap[$fileName])" -ForegroundColor Red
        Write-Host "    New: $relativePath" -ForegroundColor Red
    } else {
        $fileMap[$fileName] = $relativePath
    }
}

Write-Host "  Found $($fileMap.Count) unique markdown files" -ForegroundColor Green
if ($duplicates.Count -gt 0) {
    Write-Host "  WARNING: $($duplicates.Count) duplicate filenames detected!" -ForegroundColor Red
}
Write-Host ""

# Step 2: Function to calculate relative path from source to target
function Get-RelativePath {
    param(
        [string]$FromPath,
        [string]$ToPath
    )
    
    # Convert to arrays of path segments
    $fromParts = $FromPath -split '/'
    $toParts = $ToPath -split '/'
    
    # Remove filename from source path (keep only directory)
    $fromParts = $fromParts[0..($fromParts.Length - 2)]
    
    # Find common base
    $commonDepth = 0
    $maxDepth = [Math]::Min($fromParts.Length, $toParts.Length)
    
    for ($i = 0; $i -lt $maxDepth; $i++) {
        if ($fromParts[$i] -eq $toParts[$i]) {
            $commonDepth++
        } else {
            break
        }
    }
    
    # Build relative path
    $upLevels = $fromParts.Length - $commonDepth
    $relativeParts = @()
    
    # Add ../ for each level we need to go up
    for ($i = 0; $i -lt $upLevels; $i++) {
        $relativeParts += ".."
    }
    
    # Add the remaining parts of the target path
    $relativeParts += $toParts[$commonDepth..($toParts.Length - 1)]
    
    return ($relativeParts -join '/')
}

# Step 3: Process all markdown files and fix links
Write-Host "Step 2: Processing files and fixing links..." -ForegroundColor Yellow
$filesProcessed = 0
$linksFixed = 0
$linksNotFound = 0
$notFoundLinks = @()

$allFiles = Get-ChildItem -Recurse -Filter "*.md"
$totalFiles = $allFiles.Count

foreach ($file in $allFiles) {
    $filesProcessed++
    $relativePath = $file.FullName.Replace((Get-Location).Path + '\', '').Replace('\', '/')
    
    Write-Progress -Activity "Fixing links" -Status "Processing $relativePath" -PercentComplete (($filesProcessed / $totalFiles) * 100)
    
    $content = Get-Content $file.FullName -Raw -ErrorAction SilentlyContinue
    if (-not $content) { continue }
    
    $originalContent = $content
    $modified = $false
    
    # Find all markdown links: [text](link)
    $linkPattern = '\[([^\]]+)\]\(([^)]+)\)'
    $matches = [regex]::Matches($content, $linkPattern)
    
    foreach ($match in $matches) {
        $linkText = $match.Groups[1].Value
        $linkTarget = $match.Groups[2].Value
        $originalLink = $match.Groups[0].Value
        
        # Skip external links, anchors, and wiki-style links
        if ($linkTarget -match '^https?://' -or 
            $linkTarget -match '^#' -or
            $linkTarget -match '^\[\[' -or
            $linkTarget -match '^mailto:') {
            continue
        }
        
        # Extract just the filename part (remove any anchors or query strings)
        $targetFile = $linkTarget -replace '#.*$', '' -replace '\?.*$', ''
        
        # URL-decode the filename (e.g., Shell%20FAQ.md -> Shell FAQ.md)
        $targetFile = [System.Uri]::UnescapeDataString($targetFile)
        
        $anchor = ''
        if ($linkTarget -match '(#.*)$') {
            $anchor = $Matches[1]
        }
        
        # Skip if not a markdown file
        if ($targetFile -notmatch '\.md$') {
            continue
        }
        
        # Get just the filename
        $targetFileName = Split-Path $targetFile -Leaf
        
        # Check if we know where this file is now
        if ($fileMap.ContainsKey($targetFileName)) {
            $newTargetPath = $fileMap[$targetFileName]
            
            # Calculate relative path from current file to target
            $newRelativePath = Get-RelativePath -FromPath $relativePath -ToPath $newTargetPath
            
            # Add anchor back if there was one
            $newRelativePath += $anchor
            
            # Only update if the path has changed
            if ($newRelativePath -ne $linkTarget) {
                $newLink = "[$linkText]($newRelativePath)"
                $content = $content.Replace($originalLink, $newLink)
                $modified = $true
                $linksFixed++
            }
        } else {
            # Target file not found
            $linksNotFound++
            $notFoundLinks += [PSCustomObject]@{
                SourceFile = $relativePath
                TargetFile = $targetFileName
                OriginalLink = $linkTarget
            }
        }
    }
    
    # Write back to file if modified
    if ($modified) {
        Set-Content -Path $file.FullName -Value $content -NoNewline
    }
}

Write-Progress -Activity "Fixing links" -Completed

# Step 4: Report results
Write-Host ""
Write-Host "=== Results ===" -ForegroundColor Cyan
Write-Host "Files processed: $filesProcessed" -ForegroundColor Green
Write-Host "Links fixed: $linksFixed" -ForegroundColor Green

if ($linksNotFound -gt 0) {
    Write-Host "Links to missing files: $linksNotFound" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Files not found in map:" -ForegroundColor Yellow
    $notFoundLinks | Group-Object TargetFile | ForEach-Object {
        Write-Host "  $($_.Name) (referenced $($_.Count) times)" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "=== Link fixing complete! ===" -ForegroundColor Cyan
