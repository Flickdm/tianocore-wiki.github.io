Enable multiprocessor support for IA32 & X64 within UefiCpuPkg/CpuDxe.
(Implement
<a href="MdePkg/Include/Protocol/MpService.h" class="wikilink"
title="https://github.com/tianocore/edk2/blob/master/MdePkg/Include/Protocol/MpService.h"><span>https://github.com/tianocore/edk2/blob/master/MdePkg/Include/Protocol/MpService.h</span></a>)

- Status: Complete :heavy_check_mark:
- Difficulty: Medium
- Language: Assembly, C
- Mentor:
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>

# Details

# Documentation

Intel® 64 and IA-32 Architectures Software Developer's Manual Volume 3A:
System Programming Guide, Part 1

<http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html>

# Development environment

Building: This project can be completed on any edk2 supported OS or
toolchain.

Any assembly code should be ported to all assembly formats.

# Test environments

- OVMF: With QEMU you can use the -smp parameter to enable multiple
  processors
- DUET: With DUET you can run on a system with multiple
  threads/cores/processors

# Sub-goals

Some possible sub-goals for the driver

- Successfully start up other processor (Startup IPI)
- <s>Transition from 16-bit real to 32-bit flat mode</s> (see
  ap-startup-example below)
- <s>Transition from 16-bit real to 64-bit long mode</s> (see
  ap-startup-example below)
- <s>AP starts running CpuDxe code</s> (see ap-startup-example below)
- AP can run code requested by MpService protocol
  (StartupAllAPs/StartupThisAP)
  - See StartCore below
- Support for remaining MpService protocol functions
- <s>Dynamically update ACPI tables in OVMF based on number of
  processors</s>
- Refer to "Software Developer's Manual" to research further
  initialization requirements.

# Getting Started

- Code to start from:
  <https://github.com/jljusten/edk2/tree/ap-startup-example>
  - This code already starts the APs. This should provide most assembly
    code needed for this task.
  - Tested with QEMU/OVMF on Linux
- The StartCore project provides a sample program that uses the
  MpServices protocol
  - <https://svn.code.sf.net/p/edk2-startcore/code/StartCorePkg> (svn)
- <a href="EmulatorPkg" class="wikilink"
  title="EmulatorPkg">EmulatorPkg</a> already supports MpServices, so
  this may be used as a reference.

# Further Discussion

This project would be for an edk2 based driver, so please discuss the
project on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>.
For IRC, \#edk2 on [irc.oftc.net](http://www.oftc.net).

# See Also

- <a href="Tasks#Multiprocessor_support_in_UefiCpuPkg/CpuDxe"
  class="wikilink"
  title="Tasks#Multiprocessor support in UefiCpuPkg/CpuDxe">Tasks#Multiprocessor
  support in UefiCpuPkg/CpuDxe</a>
