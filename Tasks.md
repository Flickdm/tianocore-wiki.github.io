# Tasks

These tasks have been identified by our community. Many of these tasks
would make good
<a href="GSoC2022" class="wikilink" title="GSoC">GSoC</a> projects. They
are currently open for development by community members, and would be a
great way to get involved and start contributing. Please let us know on
<a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>
if you plan to work on one of these tasks (to prevent duplicated
effort). Also, please provide status updates on
<a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>
so the community will know the project is still being actively
developed.

**Medium versus Large Projects**

- Large Projects should take about 350 hours to complete.
- Medium Project should take about 175 hours to complete.
- Large projects are paid a different stipend. Please see the
  <a href="stipend_page" class="wikilink"
  title="https://developers.google.com/open-source/gsoc/help/student-stipends"><span>https://developers.google.com/open-source/gsoc/help/student-stipends</span></a>
  for exact amounts.

**Skills Required**

A good knowledge of the programming languages listed for each project
will be required to be successful. We do not expect prior knowledge of
firmware or UEFI, our mentors will help you learn those details. Having
some experience finding your way around a large codebase is helpful but
not required.

# Project Ideas

## New Languages and Compilers

### Large Projects

#### Dynamic Linking

Current <a href="EDK_II" class="wikilink" title="EDK II">EDK II</a>
doesn't support the dynamic linking
(https://en.wikipedia.org/wiki/Dynamic_linker), which limits UEFI
firmware to be split into modular components that can be distributed
separately in binary and loaded only when necessary. This project is to
add native dynamic library build support (PE/COFF first) and introduce a
dynamic linker in edk2 core.

- Project Size: Large
- Difficulty: Hard
- Language: C, C++
- Mentor: <a href="@shijunjing" class="wikilink"
  title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>
- Suggested by: <a href="@shijunjing" class="wikilink"
  title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>

#### Add Rust Support to EDK II

Add support for the Rust programming language to EDK II

- Project Size: Large
- Difficulty: Hard
- Language: Rust, C, Assembly, Python
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information:
<a href="Tasks-Add-Rust-Support-to-EDK-II" class="wikilink"
title="Tasks-Add-Rust-Support-to-EDK-II">Tasks-Add-Rust-Support-to-EDK-II</a>

#### Port the Go language to UEFI

Add support for the Go programming language to EDK II. Requires
implementing a new "GOOS" target OS in the Go compiler. Bonus points if
you can get this new GOOS upstreamed.

- Project Size: Large
- Difficulty: Hard
- Language: Go, C, Assembly
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information: TODO

### Medium Projects

#### LLVM Sanitizer support

Add AddressSanitizer, UBSan, and possibly MSAN support to EDK2

- Depends on the toolchain and possibly CPU architecture
- Focus on firmware components
- A branch with UBSan and ASAN already exists, although it's incomplete:
  <https://github.com/shijunjing/edk2/tree/sanitizer2>
- Project Size: Medium
- Difficulty: Medium...Hard
- Language: C, Assembly
- Mentor:
- Suggested by: <a href="@shijunjing" class="wikilink"
  title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>,
  <a href="@heatd" class="wikilink"
  title="https://github.com/heatd"><span>https://github.com/heatd</span></a>

## New Platforms and Boards

### Large Projects

#### MinPlatform Qemu Support

Build a MinPlatform Board Port for Qemu.

- Project Size: Large
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information:
<a href="Tasks-MinPlatform-QemuOpenBoardPkg" class="wikilink"
title="Tasks-MinPlatform-QemuOpenBoardPkg">Tasks-MinPlatform-QemuOpenBoardPkg</a>

#### Port MinPlatform to a New Motherboard

Build a MinPlatform board port for a new motherboard of your choice.

- Project Size: Large
- Difficulty: Medium...Hard
- Language: C
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information:
<a href="Tasks-MinPlatform-Board-Port" class="wikilink"
title="Tasks-MinPlatform-Board-Port">Tasks-MinPlatform-Board-Port</a>

#### Add a MinPlatform Board Port for the Raspberry Pi

Build a MinPlatform board port for the Raspberry Pi.

- Project Size: Large
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

More information:
<a href="Tasks-MinPlatform-Port-to-Raspberry-Pi" class="wikilink"
title="Tasks-MinPlatform-Port-to-Raspberry-Pi">Tasks-MinPlatform-Port-to-Raspberry-Pi</a>

#### Add CI (Continuous Integration) Boot Testing for EDK II Platforms

Update EDK II CI to support testing of platforms in the
<a href="edk2-plaforms" class="wikilink"
title="https://github.com/tianocore/edk2-platforms"><span>https://github.com/tianocore/edk2-platforms</span></a>
repository. The CI tests can be run in simulators or on physical HW.
This task involves defining a standard interface between EDK II CI
agents and remote CI agents that take as input a FW image built by an
EDK II CI agent and provides pass/fail results back to the EDK II CI
agent.

- Project Size: Large
- Difficulty: Hard
- Language: YAML, Python, C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

### Medium Projects

#### Add S3 Resume Support to MinPlatform

Currently MinPlatform does not support S3 resume, so let's implement it!
This will require implementing support for the SMM lock box, parsing of
the DRAM scatter-gather list, and restore of system state. Demonstrate
working S3 resume on at least one real board.

- Project Size: Medium
- Difficulty: Medium..Hard
- Language: C
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

## Testing and Quality Improvements

### Medium Projects

#### Write Unit Tests for EDK II

EDK II needs more unit tests... help us write them!

- Project Size: Medium
- Difficulty: Easy...Medium
- Language: C, Assembly
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

#### Host-based Unit Tests using Google Test

Add support for the <a href="GoogleTestLLVM" class="wikilink"
title="https://google.github.io/googletest/"><span>https://google.github.io/googletest/</span></a>
mocking framework to the EDK II
<a href="UnitTestFrameworkPkg" class="wikilink"
title="https://github.com/tianocore/edk2/tree/master/UnitTestFrameworkPkg"><span>https://github.com/tianocore/edk2/tree/master/UnitTestFrameworkPkg</span></a>
to support implementing host based tests. Also port the cmocka based
unit tests to GoogleTest to test the mocking framework and provide
GoogleTest examples to the rest of the EDK II Community.

- Project Size: Medium
- Difficulty: Medium...Hard
- Language: C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

#### Test Harness Improvements

Improvements to the test harness in the edk2-test staging branch.
<https://github.com/tianocore/edk2-staging/tree/edk2-test>

- Test Harness for PEI using Capsule Update or Recovery feature to
  deliver tests
- Test Harness for SMM using Capsule Update or Recovery feature to
  deliver tests
- Project Size: Medium
- Performance improvements of test harness
- Difficulty: Medium

Mentor: <a href="@mdkinney" class="wikilink"
title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>,
Supreeth Venkatesh

#### Continuous Integration For EDK II Platforms

Azure pipelines CI is currently only enabled for core EDK II. Extend
this by implementing Azure pipelines to test patches submitted for open
source platforms hosted in edk2-platforms.

- Project Size: Medium
- Difficulty: Easy
- Language: Python
- Mentor:
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>

#### Add CLANG Compiler coverage to EDK II CI

EDK II CI currently supports GCC and VS2019. Add EDK II CI tests to
build using CLANG compilers for Windows and Linux.

- Project Size: Medium
- Difficulty: Easy...Medium
- Language: Python, C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

#### Upgrade EDK II CI Agents from Ubuntu 18 to Ubuntu 20

Address all blocking issues that prevent EDK II CI agents from using
Ubuntu 20.

- Project Size: Medium
- Difficulty: Medium
- Language: Python, C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

## EDK II Core Improvements

### Medium Projects

#### DataHub & GCD scalability

The DXE core's DataHub and GCD (Global Coherency Domain) layers don't
scale well as the number of data items gets large, since they are based
on simple linked lists. Find better data structures.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: bjjohnson

#### Intrinsic Libraries for VS20xx, GCC, and CLANG

Implement intrinsic libraries for the supported compilers for memcpy(),
memset(), and 64-bit integer math operations. This improves
compatibility of EDK II with standard C sources.

- Project Size: Medium
- Difficulty: Medium...Hard
- Language: C, Python
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

## Accessibility

### Large Projects

#### Audio Output device support

The first step towards an audio interface is enabling standardized
support for audio output. This task means prototyping an
AUDIO_OUTPUT_PROTOCOL, and implementing at least one device driver
producing this protocol. The initial drivers envisioned are
\`virtio-sound\` (for use with QEMU), \`USB Audio Class\`, and \`HDA\`.
The HDA driver would additionally need to prototype an
HDA_CODEC_PROTOCOL and implement it in a driver targeting a specific
hardware codec.

- Project Size: Large
- Difficulty: Medium...Hard
- Language: C
- Mentor: <a href="@leiflindholm" class="wikilink"
  title="https://github.com/leiflindholm"><span>https://github.com/leiflindholm</span></a>
- Suggested by: <a href="@leiflindholm" class="wikilink"
  title="https://github.com/leiflindholm"><span>https://github.com/leiflindholm</span></a>

**Follow-on tasks**

- HII integration of Audio output
- HII integration of Speech synthesis?
- Audio Input device support
- Voice control

## Debug Tool Improvements

### Large Projects

#### SourceLevelDebugPkg & GDB

Implement a fully functional gdb stub for x86/x64, attaching to
SourceLevelDebugPkg's remote protocol. Expected outcome is the ability
to debug GCC binaries via the software debugger attached to Qemu via an
emulated serial port.

- Project Size: Large
- Difficulty: Medium...Hard
- Language: Python, C
- Mentor:
- Suggested by: bjjohnson

#### Utilize return address information

Make use of \_\_builtin_return_address(n) & \_ReturnAddress to add debug
& data gathering capabilities. Some ideas:

- Produce a protocol with info on the image handle so a shell command
  can dump out the information
- Track, on a per call basis, where resources are being consumed
- Detect memory leaks
- Log information about stall and timer usage
- Collect statistics on BootServices and RuntimeServices calls.
- Performance profile library calls EFI boot and runtime services calls.
- gBS is set up by a library so it could point to a debug wrapper for
  the functions.
- Post process raw output (PDB name + offset in PE/COFF) to include
  function names via parsing .map files.

Summary:

- Project Size: Large
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

### Medium Projects

#### MP safe Print, DEBUG, and ASSERT

Create a thread safe version of the DEBUG and ASSERT trace functions.
This will allow APs (CPUs other than the Boot Strap Processor (BSP)) to
safely print and use DEBUG trace messages.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

#### Port EmulatorPkg to ARM

Create a ARM based host environment for
<a href="EmulatorPkg" class="wikilink"
title="EmulatorPkg">EmulatorPkg</a>. Expected outcome is being able to
run ARM UEFI binaries on top of Linux running on an ARM system.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

#### EmulatorPkg network support for Linux

Port <a href="EmulatorPkg" class="wikilink"
title="EmulatorPkg">EmulatorPkg</a>/EmuSnpDxe to support Linux. Expected
outcome is being able to open TCP/IP connections from UEFI shell
applications running in EmulatorPkg on top of Linux.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

#### Various Debug Improvements

Note: There are many ideas here. Please feel free to gather any
reasonable subset for a project proposal.

- Debug version of libraries, and tools to analyze the data:
- UefiBootServicesTableLib.h & UefiRuntimeServicesLib.h that can profile
  UEFI service usage.
- Debug version of MemoryAllocationLib.h that can detect memory leaks,
  buffer overruns, etc.
- Add a library class for logging the data
- Log data directly to image handle, per driver.
- Log data to centralized data service.
- Add a library class for a module to access/initiate leak checking.
- Add sample based profiling to <a href="EmulatorPkg" class="wikilink"
  title="EmulatorPkg">EmulatorPkg</a>/<a href="Nt32Pkg" class="wikilink" title="Nt32Pkg">Nt32Pkg</a>.
  On a Mac this would be figuring out how to use Instruments to profile
  the emulator.
- Add a sampling based profiling tool to a real EFI system. Note this
  requires the ability to capture a stack trace and then post process it
  (likely on the build system).

Summary:

- Project Size: Medium
- Difficulty: Medium ... Hard
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

## UEFI Networking Improvements

### Large Projects

#### SMB network share support

Enable accessing content on an SMB network share. Expected outcome is
being able to read data from an SMB network share via the UEFI shell.
Bonus points if you implement EFI_SIMPLE_FILESYSTEM_PROTOCOL, which
allows the network share to be mounted as a disk.

- Project Size: Large
- Difficulty: Hard
- Language: C
- Mentor:
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>,
  <a href="@ErikBjorge" class="wikilink"
  title="https://github.com/ErikBjorge"><span>https://github.com/ErikBjorge</span></a>,
  <a href="@jcarsey" class="wikilink"
  title="https://github.com/jcarsey"><span>https://github.com/jcarsey</span></a>

### Medium Projects

#### Network Block Device (NBD) client

<http://nbd.sourceforge.net/>

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: bjjohnson, andreiwarkentin

More information: <a href="Tasks-Network_Block_Device" class="wikilink"
title="Tasks-Network Block Device">Tasks-Network Block Device</a>

#### DNS Proxy Support

Implement DNS proxy on EDK II. Expected outcome is being able to resolve
hostnames via a tunneled DNS connection. TCP/IP utilities like ping can
be used to test and demonstrate this.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: kidzyoung

## UEFI Applications and UEFI Shell Improvements

### Large Projects

#### HII command-line browser

A command-line based HII browser, suitable for automation. Either a
shell command or set of commands for locating, dumping, and modifying
configuration values, or commands for dumping and loading HII data
to/from a file in an easily-edited format.

- Project Size: Large
- Difficulty: Medium...Hard
- Language: C
- Mentor:
- Suggested by: bjjohnson

#### Python3 for UEFI Shell: Python modules for standard UEFI Services and Protocols

Python3 in the edk2-libc <a href="AppPkg" class="wikilink"
title="https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8"><span>https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8</span></a>
can be used to implement UEFI firmware tests. In order to increase the
scope of possible tests, it would be valuable to have python modules
that wrap the UEFI Boot Services, UEFI Runtime Services, and the
commonly used UEFI Protocols.

- Project Size: Large
- Difficulty: Medium
- Language: C, Python
- Mentor:
- Suggested by: <a href="@jpshivakavi" class="wikilink"
  title="https://github.com/jpshivakavi"><span>https://github.com/jpshivakavi</span></a>

### Medium Projects

#### Port ACPI-CA to a shell application

Port portions of ACPI-CA to a shell application to enable dumping and
disassembly of ACPI tables.

- Based on <https://acpica.org/node/126>
- Table Verifier: AML method execution for testing without booting to an
  OS.
- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor: TBD
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>,
  <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>

#### Port OpenSSH as a shell application

Port OpenSSH to the UEFI shell. Use the UEFI networking stack to
establish TCP/IP connections to remote systems. Should be able to
demonstrate working remote shell session from the UEFI shell.

- Project Size: Medium
- Difficulty: Medium...Hard
- Language: C
- Mentor:
- Suggested by: bjjohnson

#### Python3 for UEFI Shell: Add GCC & CLANG tool chain support

Python3 in the edk2-libc <a href="AppPkg" class="wikilink"
title="https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8"><span>https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8</span></a>
supports Visual Studio builds. Update the sources and the build files to
support the GCC and CLANG compilers.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@jpshivakavi" class="wikilink"
  title="https://github.com/jpshivakavi"><span>https://github.com/jpshivakavi</span></a>

#### Python3 for UEFI Shell: Add AARCH64 CPU Architecture

Python3 in the edk2-libc <a href="AppPkg" class="wikilink"
title="https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8"><span>https://github.com/tianocore/edk2-libc/tree/master/AppPkg/Applications/Python/Python-3.6.8</span></a>
supports IA32/X64. Update the sources and the build files to support
AARCH64.

- Project Size: Medium
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@jpshivakavi" class="wikilink"
  title="https://github.com/jpshivakavi"><span>https://github.com/jpshivakavi</span></a>

## EDK II BaseTools

### Large Projects

#### Port C Tools to Python

Port tools currently implemented in C to Python. This removes the need
to run a C compiler to build the tools required to build EDK II
firmware.

- Project Size: Large
- Difficulty: Hard
- Language: C, Python
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

### Medium Projects

#### Resource Compiler

Implement a resource compiler in Python that can add resource sections
defined by the UEFI Specification to a PE/COFF image.

- Project Size: Medium
- Difficulty: Medium
- Language: Python
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

## Tools for EDK II Ease-of-Use

### Medium Projects

#### UEFI Driver Wizard

Improvements to existing <a href="UEFI_Driver_Wizard" class="wikilink"
title="UEFI Driver Wizard">UEFI Driver Wizard</a>

- Update to latest version of wxPython
- Update for latest UEFI Specifications
- Consider adding PI module types (PEIMs, DXE Drivers, DXE Runtime
  Drivers, SMM Drivers)
- Project Size: Medium
- Difficulty: Easy
- Mentor: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

#### Various Ease-Of-Use Tools

Simplify EDK II development:

- GUI frontend for <a href="EdkRepo" class="wikilink"
  title="https://github.com/tianocore/edk2-edkrepo"><span>https://github.com/tianocore/edk2-edkrepo</span></a>.
- GUI helper tool to configure and launch a build.
- GUI helper tool to configure platform PCDs.
- GUI helper tool to configure FLASH layout, Recovery, and Capsules.
- Automatically set values in
  <a href="target.txt" class="wikilink" title="target.txt">target.txt</a>
  based on platform configuration (compiler, thread count, etc.).
- Output a compile_commands.json at build time that can be consumed by
  various tools like clangd, etc.
- Project Size: Medium
- Difficulty: Easy...Medium
- Languages: C, Python
- Mentor: <a href="@ashedesimone" class="wikilink"
  title="https://github.com/ashedesimone"><span>https://github.com/ashedesimone</span></a>,
  <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

# Partially Complete Projects

None at the moment.

# See Also

- <a href="Complete-Tasks" class="wikilink"
  title="Previously Complete Projects">Previously Complete Projects</a>
- <a href="Obsolete-Tasks" class="wikilink"
  title="Obsolete Projects">Obsolete Projects</a>
- <a href="How_To_Contribute" class="wikilink"
  title="How To Contribute">How To Contribute</a>
- <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
