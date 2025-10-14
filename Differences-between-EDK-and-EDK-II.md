# Differences Between Edk And Edk Ii

Note: The original EFI Development Kit
(<a href="EDK" class="wikilink" title="EDK">EDK</a>) is no longer
supported. This document is maintained for historical purposes. Please
use <a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> for
current UEFI development.

### What are the differences between EDK and EDK II?

The main differences are in build architecture. The build description
files (.dsc .inf, etc) have been enhanced. The
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> build can
understand EDK build description files, so an EDK II build can include
EDK source code (with limitations). There are also build tool
differences: EDK II supports a larger number of operating systems and
tool chains.

EDK II has richer libraries (MDELIB, etc.), which makes the source code
structure very different. EDK II also uses a package concept, so that
the directory and file layout is different.

EDK II uses Platform Configuration Database
(<a href="PCD" class="wikilink" title="PCD">PCD</a>) for
parameterization and binary patch support, and supports. newer UEFI/PI
specifications (see table below for more info).

EDK II provides compatibility with EDK-style source code using
EdkCompatiblityPkg (<a href="ECP" class="wikilink" title="ECP">ECP</a>).
However, ECP support is being deprecated in current platforms. This is
possible because ECP provides binary compatibility for EDK through
libraies and thunk code.

EDK II is also designed to work with Doxygen to generate design level
specifications.

In addition, since EDK II supports later versions of the UEFI and PI
Specifications, there are newer protocols that will be part of EDK II
that do not exist in EDK.

### Are there similarities between EDK and EDK II?

The Platform Initialization boot execution phases are similar. EDK and
EDK II have a similar boot (SEC-PEI-DXE-TSL) and runtime flow. Protocol
interfaces supported in both EDK and EDK II will be the same. EDK II can
include EDK source code though the use of
<a href="ECP" class="wikilink" title="ECP">ECP</a>.

The following table is a side by side comparison.

<table>
<thead>
<tr>
<th></th>
<th><p>EDK</p></th>
<th><p>EDK II</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Development OS</p></td>
<td><p>WinXP</p></td>
<td><p>WinXP/7/8/8.1/10, Linux, OS/X</p></td>
</tr>
<tr>
<td><p>Compiler/Linker</p></td>
<td><p>VS2003, VS2005, WinDDK</p></td>
<td><p>VS2003, VS2005, VS2008, VS2010, VS2013, VS2015, WinDDK, Intel,
GCC4, GCC5, LLVM/CLANG</p></td>
</tr>
<tr>
<td><p>Build</p></td>
<td><p>nmake</p></td>
<td><p>nmake, gmake</p></td>
</tr>
<tr>
<td><p>Build Tools</p></td>
<td><p>C</p></td>
<td><p>POSIX C, Python</p></td>
</tr>
<tr>
<td><p>Target Platforms (open source)</p></td>
<td><p>NT32, DUET,</p></td>
<td><p>See <a href="EDK_II_Platforms" class="wikilink"
title="EDK II Platforms">EDK II Platforms</a></p></td>
</tr>
<tr>
<td><p>Distribution</p></td>
<td><p>ZIP Files – Entire Tree Packages with XML metadata</p></td>
<td><p><a href="EDKII_Packages" class="wikilink"
title="Packages">Packages</a></p>
<ul>
<li>Standard module distribution method (source/binary)</li>
<li>XML – Allows packages/modules to be imported/exported to many build
systems</li>
<li>EDK Compatibility Package – Provides reuse of EDK source
modules</li>
</ul></td>
</tr>
<tr>
<td><p>Standards (UEFI)</p></td>
<td><p>EFI 1.10, UEFI 2.0, UEFI 2.1, Intel Framework, PI 1.0</p></td>
<td><p>Focus on UEFI 2.3+/PI 1.2+ Spec Updates. Includes Support for EFI
1.10, UEFI 2.0+, PI 1.0+ &amp; Intel Framework. See <a href="UDK2018"
class="wikilink" title="UDK2018">UDK2018</a> &amp; <a href="EDK_II"
class="wikilink" title="EDK II">EDK II</a> for info on specific
releases.</p></td>
</tr>
<tr>
<td><p>Library</p></td>
<td><p>binary .Lib files</p></td>
<td><p>Library Classes/Library Instances</p>
<ul>
<li>Maximize reuse of source code</li>
<li>Use library instances to optimize for size or speed</li>
</ul></td>
</tr>
<tr>
<td><p>Configuration Method</p></td>
<td><p><strong>#define</strong></p></td>
<td><p>Platform Configuration Database</p>
<ul>
<li>Maximize reuse of source code</li>
<li>Allows platform developer/integrator to modify settings without
modifying module sources</li>
</ul></td>
</tr>
</tbody>
</table>

### How can you find out what has changed between releases?

The release notes will have a general summary of features and fixes for
EDK II changes. See
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> for the
latest stable release and release notes.

### In the past there were Libraries associated with PPI

EDK II does not use that model.
