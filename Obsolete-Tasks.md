# Obsolete Tasks

**:red_circle: It is not recommended that anyone work on these tasks.
:red_circle:**

These are tasks had been previously identified by our community but for
various reasons are no longer relevant and are largely historical. We do
not plan to accept any GSoC proposals for these projects. Please let us
know on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>
if you plan to work on one of these tasks anyway (to prevent duplicated
effort).

# Obsolete Tasks

### Build a C compiler for EBC

**:red_circle: Low priority because EBC is no longer required by the
UEFI spec. :red_circle:**

Build a C compiler that is able to generate EBC (EFI Byte Code).

- Difficulty: Hard
- Language: C, Assembly
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information:
<a href="Tasks-Build-a-C-compiler-for-EBC" class="wikilink"
title="Tasks-Build-a-C-compiler-for-EBC">Tasks-Build-a-C-compiler-for-EBC</a>

### Compatibility Support Module

**:red_circle: Low priority because TianoCore does not promote legacy
boot architectures. :red_circle:**

A <a href="CSM" class="wikilink" title="CSM">CSM</a> allows a UEFI
system to boot legacy operating systems on IA32 & X64 systems. In other
words, most current production OS's. Strong preference is for a BSD
licensed solution, as this is license used by nearly all of our code. A
SeaBIOS based solution could be considered, but would not be as widely
usable (GPL license). <http://www.coreboot.org/SeaBIOS>

- Difficulty: Hard
- Language: Assembly, C
- Mentor:
- Suggested by: bjjohnson
- Status: No longer a priority, since UEFI OS support is mainstream.
  SeaBIOS can be built as a CSM, but a BSD licensed alternative is still
  not available.

### Intel Galileo Platform Improvements

**:red_circle: Low priority because Galileo is no longer manufactured.
:red_circle:**

Add features to
<a href="Intel_Galileo" class="wikilink" title="Galileo">Galileo</a>
based on open source platform in EDK II.
<https://github.com/tianocore/edk2/tree/master/QuarkPlatformPkg>

- Switch from private SD/MMC stack to standard one in
  <a href="MdeModulePkg" class="wikilink"
  title="MdeModulePkg">MdeModulePkg</a>.
- Debugger/Console using USB client mode for multiple high perf UARTs in
  ESRAM
- Logging and Debugger support over USB using ESRAM for DMA.

Mentor: <a href="@mdkinney" class="wikilink"
title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

### Coverity Static Analysis Tools

**:red_circle: Low priority for now because one-off Coverity scans have
been done and those bugs still need to be fixed. :red_circle:**

Enable Coverity Scan for all EDK II projects.
<https://scan.coverity.com/>

- Evaluate open source CI tools to fine best one to periodically auto
  run Coverity static analysis
- Look into ways to auto-post results to TianoCore (website, wiki, or
  git repo).
- Look into ways to automate GitHub issue generation based on Coverity
  results.

Mentor: <a href="@mdkinney" class="wikilink"
title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>,
<a href="@shijunjing" class="wikilink"
title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>

# See Also

- <a href="How_To_Contribute" class="wikilink"
  title="How To Contribute">How To Contribute</a>
