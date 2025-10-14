# EDK II Build Tools Project

This project is for development of the
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> Build Tools.
This is the primary set of tools for processing [EDK
II](http://www.tianocore.org/edk2/) content. It contains configuration
templates and source files. The tools support a Makefile based EDK II
build with no additional packages required--the compiler tool chain, an
assembler and optional ACPI assembler are the only additional tools need
to build the EDK II project.

Source code in this project is divided into two types:

- Tools written in C ([ANSI C](http://www.open-std.org/jtc1/sc22/wg14/))
  are primarily for tools that modify binary data structures
- Tools based on Python ([Python](http://www.python.org)) are primarily
  for tools that parse or process text files

Tools must adhere to the following requirements:

- Tools must be able to execute on a wide variety of operating systems.
- Tools written in Python use
  <a href="Python_Tools" class="wikilink" title="Python Tools">Python
  Tools</a> and get converted to Win32 executable binary files before
  they are added to the BaseTools directory in the EDK II project.

To assist developers working with the Python tools, Python has been
provided, along with the Python tools for creating graphical user
interfaces (wxPython) and tools for creating native executable files
(cxFreeze and py2app) for Microsoft\*, Linux\*, and Mac OS/X\*. Python
and the supporting Python package are available via SVN (See Resources
below).

Tested and Released binaries for Microsoft Windows\* 32-bit operating
system are checked into the EDK II project along with the configuration
files. The BaseTools use an INI format for build Meta Data files. You do
not need to down load this project to build EDK II with the BaseTools.
Refer to the BuildNotes2.txt file for details on using the BaseTools for
the build.

Download and setup guide:
<a href="BuildTool_Setup_Guide" class="wikilink"
title="BuildTool Setup Guide">BuildTool Setup Guide</a>

- Prebuilt Windows tools are available at
  <https://github.com/tianocore/edk2-BaseTools-win32.git>
  - Note: the Prebuilt Windows tools (Win32 binaries) are only valid for
    the tip of <https://github.com/tianocore/edk2>. It is recommended to
    build the source tools for other EDK II branches and projects:
    Please see: <a href="Windows-systems#compile-tools" class="wikilink"
    title="Windows-systems#compile-tools">Windows-systems#compile-tools</a>
- BaseTools content (part of the edk2 project) is available at:
  <https://github.com/tianocore/edk2.git>

Project Info: [Project Info
ReadMe](https://github.com/tianocore/edk2/tree/master/BaseTools/ReadMe.txt)

Documentation [User
Manuals](https://github.com/tianocore/edk2/tree/master/BaseTools/UserManuals)

View the <a href="EDK_II_Tools_List" class="wikilink"
title="EDK II Tools List">EDK II Tools List</a> for a description of
each tool.

## Releases

<a href="UDK2017" class="wikilink" title="UDK2017">UDK2017</a>:

- Changes for UDK2017 [BaseTools
  Notes](https://github.com/tianocore-docs/Docs/blob/master/UDK/UDK2017/BaseToolsNotes.md)
- Please see
  <a href="UDK2017" class="wikilink" title="UDK2017">UDK2017</a> wiki
  page for more information on the latest release of Build Tools

UDK2015 :

- [BaseTools.Windows.zip](https://github.com/tianocore/udk/releases/download/UDK2015/BaseTools.Windows.zip)
- [BaseTools.Unix.tar](https://github.com/tianocore/udk/releases/download/UDK2015/BaseTools.Unix.tar)

<hr>

Below Table are Releases for Archive purposes only

<div class="t_projects">

<table>

<tr>

<th colspan="4" style="background-color:#a9c6dd">

BuildTools Releases

</th>

</tr>

<tr>

<th>

Release

</th>

<th>

Description

</th>

<th>

Tools included in the release

</th>

<th>

Documents

</th>

</tr>

<tr>

<td rowspan="4">

[TAR](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/BaseTools(Unix)_UDK2010.SR1.UP1.tar/download)

[.ZIP](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/BaseTools(Windows)_UDK2010.SR1.UP1.zip/download)
June 26, 2012

</td>

<td rowspan="4">

Primary set of tools for processing EDK II content.

</td>

<td rowspan="4">

- BootSectImage
- Build Utility
- EfiLdrImage
- EfiRom
- Fpd2Dsc
- GenBootSector
- GenCrc32
- GenDepex
- GenFds
- GenFfs
- GenFv
- GenFw
- GenPage
- GenPatchPcdTable
- GenSec
- GenVtf
- UEFI Packaging Tool
- LzmaCompress
- Msa2Inf
- PatchPcdValue
- Spd2Dec
- SplitFile
- TargetTool
- TianoCompress
- Trim
- VfrCompiler
- VolInfo

</td>

<td>

<span class="docHeader">Readme</span>

[ReadMe.txt
(baseTools)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe.txt/download)

[ReadMe.txt (Base Tools
–gcc)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe(Gcc).txt/download)

[ReadMe.txt
(Base-Tools-config)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe(Coonf).txt/download)

</td>

</tr>

<tr>

<td>

<span class="docHeader">General documentation</span> [UDK2010.SR1.UP1
User Manuals
Zip](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/UDK2010.SR1.UP1.UserManuals.zip/download)

</td>

</tr>

<tr>

<td>

<span class="docHeader">Specifications</span>

</td>

</tr>

<tr>

<td>

<span class="docHeader">Technical information</span>

</td>

</tr>

<tr>

<td rowspan="4">

[.TAR](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/BaseTools(Unix)_UDK2010.SR1.tar/download)

[.ZIP](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/BaseTools(Windows)_UDK2010.SR1.zip/download)

Jan 2, 2012

</td>

<td rowspan="4">

Primary set of tools for processing EDK II content.

</td>

<td rowspan="4">

</td>

<td>

<span class="docHeader">Readme</span>

[ReadMe.txt
(baseTools)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe.txt/download)

[ReadMe.txt (Base Tools
–gcc)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe(Gcc).txt/download)

[ReadMe.txt
(Base-Tools-config)](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/ReadMe(Coonf).txt/download)

</td>

</tr>

<tr>

<td>

<span class="docHeader">General documentation</span> [User Manuals
Zip](http://sourceforge.net/projects/edk2-buildtools/files/BuildTools_Source_Packages/UserManuals.zip/download)

</td>

</tr>

<tr>

<td>

<span class="docHeader">Specifications</span>

</td>

</tr>

<tr>

<td>

<span class="docHeader">Technical information</span>

</td>

</tr>

</table>

</div>

## Notes

These tools are under constant development to ensure
<a href="UEFI" class="wikilink" title="UEFI">UEFI</a>/PI specification
conformance and to reduce build times.

Your Feedback is critical to making EDK II a success. Please submit any
enhancements, defects, or requests through the the \<a
href="[mailto:edk2-devel@lists.01.org?Subject=BuildTools&body=BuildTools](mailto:edk2-devel@lists.01.org?Subject=BuildTools&body=BuildTools)\>
edk2-devel </a> mailing list

Goto
<a href="edk2-devel" class="wikilink" title="edk2-devel">edk2-devel</a>
to Join the Mailing list

License information: <a href="BSD_Plus_Patent_License" class="wikilink"
title="BSD Plus Patent License">BSD Plus Patent License</a>

Project owner(s): See:
[Maintainers.txt](https://raw.githubusercontent.com/tianocore/edk2/master/Maintainers.txt)
