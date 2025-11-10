# Differences Between Edk And Edk Ii

Note: The original EFI Development Kit
([EDK](EDK)) is no longer
supported. This document is maintained for historical purposes. Please
use [EDK II](EDK_II) for
current UEFI development.

### What are the differences between EDK and EDK II?

The main differences are in build architecture. The build description
files (.dsc .inf, etc) have been enhanced. The
[EDK II](EDK_II) build can
understand EDK build description files, so an EDK II build can include
EDK source code (with limitations). There are also build tool
differences: EDK II supports a larger number of operating systems and
tool chains.

EDK II has richer libraries (MDELIB, etc.), which makes the source code
structure very different. EDK II also uses a package concept, so that
the directory and file layout is different.

EDK II uses Platform Configuration Database
([PCD](PCD)) for
parameterization and binary patch support, and supports. newer UEFI/PI
specifications (see table below for more info).

EDK II provides compatibility with EDK-style source code using
EdkCompatiblityPkg ([ECP](ECP)).
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
[ECP](ECP).

The following table is a side by side comparison.

<table>
<tr>
<th></th>
<th>EDK</th>
<th>EDK II</th>
</tr>
<tr>
<td>Development OS</td>
<td>WinXP</td>
<td>WinXP/7/8/8.1/10, Linux, OS/X</td>
</tr>
<tr>
<td>Compiler/Linker</td>
<td>VS2003, VS2005, WinDDK</td>
<td>VS2003, VS2005, VS2008, VS2010, VS2013, VS2015, WinDDK, Intel,
GCC4, GCC5, LLVM/CLANG</td>
</tr>
<tr>
<td>Build</td>
<td>nmake</td>
<td>nmake, gmake</td>
</tr>
<tr>
<td>Build Tools</td>
<td>C</td>
<td>POSIX C, Python</td>
</tr>
<tr>
<td>Target Platforms (open source)</td>
<td>NT32, DUET,</td>
<td>See [EDK II Platforms](EDK_II_Platforms)</td>
</tr>
<tr>
<td>Distribution</td>
<td>ZIP Files – Entire Tree Packages with XML metadata</td>
<td>[Packages](EDKII_Packages)
Standard module distribution method (source/binary)
XML – Allows packages/modules to be imported/exported to many build
systems
EDK Compatibility Package – Provides reuse of EDK source
modules
</td>
</tr>
<tr>
<td>Standards (UEFI)</td>
<td>EFI 1.10, UEFI 2.0, UEFI 2.1, Intel Framework, PI 1.0</td>
<td>Focus on UEFI 2.3+/PI 1.2+ Spec Updates. Includes Support for EFI
1.10, UEFI 2.0+, PI 1.0+ &amp; Intel Framework. See [UDK2018](UDK2018) &amp; [EDK II](EDK_II) for info on specific
releases.</td>
</tr>
<tr>
<td>Library</td>
<td>binary .Lib files</td>
<td>Library Classes/Library Instances
Maximize reuse of source code
Use library instances to optimize for size or speed
</td>
</tr>
<tr>
<td>Configuration Method</td>
<td>**#define**</td>
<td>Platform Configuration Database
Maximize reuse of source code
Allows platform developer/integrator to modify settings without
modifying module sources
</td>
</tr>
</table>

### How can you find out what has changed between releases?

The release notes will have a general summary of features and fixes for
EDK II changes. See
[EDK II](EDK_II) for the
latest stable release and release notes.

### In the past there were Libraries associated with PPI

EDK II does not use that model.
