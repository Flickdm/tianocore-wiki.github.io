These tasks have already been completed and are examples of successful
projects from prior years.

# Previously Complete Projects

## GSoC 2021

### <s>ext4 driver</s>

Develop a read-only ext4 filesystem driver.
<http://en.wikipedia.org/wiki/Ext4>

- Difficulty: Medium ... Hard
- Language: C
- Mentors: Mike Kinney (<a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>)
  and Bret Barkelew (<a href="@corthon" class="wikilink"
  title="https://github.com/corthon"><span>https://github.com/corthon</span></a>)
- Suggested by: rsun3
- Status: Completed :heavy_check_mark: as
  <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  project by Pedro Falcato (<a href="@heatd" class="wikilink"
  title="https://github.com/heatd"><span>https://github.com/heatd</span></a>).
- Available at:
  <a href="edk2-platforms/tree/master/Features/Ext4Pkg" class="wikilink"
  title="https://github.com/tianocore/edk2-platforms/tree/master/Features/Ext4Pkg"><span>https://github.com/tianocore/edk2-platforms/tree/master/Features/Ext4Pkg</span></a>

More information:
<a href="Tasks-ext2_file-system_driver" class="wikilink"
title="Tasks-ext2 file-system driver">Tasks-ext2 file-system driver</a>

### <s>Port MinPlatform to the Acer Aspire VN7-572G</s>

Build a MinPlatform board port for the Acer Aspire VN7-572G.

- Language: C
- Mentors: Nate DeSimone (<a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>),
  Isaac Oram (<a href="@iworam" class="wikilink"
  title="https://github.com/iworam"><span>https://github.com/iworam</span></a>),
  and Michael Kubacki (<a href="@makubacki" class="wikilink"
  title="https://github.com/makubacki"><span>https://github.com/makubacki</span></a>)
- Suggested by: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>
- Status: Completed :heavy_check_mark: as
  <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  project by Benjamin Doron (<a href="@benjamindoron" class="wikilink"
  title="https://github.com/benjamindoron"><span>https://github.com/benjamindoron</span></a>).
- Available at: <a
  href="edk2-platforms/tree/master/Platform/Intel/KabylakeOpenBoardPkg/AspireVn7Dash572G"
  class="wikilink"
  title="https://github.com/tianocore/edk2-platforms/tree/master/Platform/Intel/KabylakeOpenBoardPkg/AspireVn7Dash572G"><span>https://github.com/tianocore/edk2-platforms/tree/master/Platform/Intel/KabylakeOpenBoardPkg/AspireVn7Dash572G</span></a>

More information: <a
href="https://gist.github.com/benjamindoron/cf9ce28bba0b6356113918a40814af30"
class="wikilink"
title="https://gist.github.com/benjamindoron/cf9ce28bba0b6356113918a40814af30">https://gist.github.com/benjamindoron/cf9ce28bba0b6356113918a40814af30</a>

### <s>Formally Verified PE/COFF Loader</s>

- Language: C
- Mentors: Bret Barkelew (<a href="@corthon" class="wikilink"
  title="https://github.com/corthon"><span>https://github.com/corthon</span></a>)
  and Benjamin You (<a href="@BenjaminYou" class="wikilink"
  title="https://github.com/BenjaminYou"><span>https://github.com/BenjaminYou</span></a>)
- Suggested by: <a href="@mhaeuser" class="wikilink"
  title="https://github.com/mhaeuser"><span>https://github.com/mhaeuser</span></a>
- Status: Completed :heavy_check_mark: as
  <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  project by Marvin Häuser (<a href="@mhaeuser" class="wikilink"
  title="https://github.com/mhaeuser"><span>https://github.com/mhaeuser</span></a>).

More information:
<a href="https://github.com/mhaeuser/gsoc-2021-edk2-pe-loader"
class="wikilink"
title="https://github.com/mhaeuser/gsoc-2021-edk2-pe-loader">https://github.com/mhaeuser/gsoc-2021-edk2-pe-loader</a>

### <s>Enable Clang/LLVM Build for Microsoft Windows</s>

<a href="LLVM" class="wikilink"
title="https://llvm.org/"><span>https://llvm.org/</span></a> support in
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> is currently
limited to Linux builds. Getting LLVM running on Windows would enable
the TianoCore project to support Clang and the LLVM toolchain more
robustly. Microsoft Windows 10 should be the primary target.

- Difficulty: Medium
- Language: C, Python
- Mentor: <a href="@shijunjing" class="wikilink"
  title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>
- Suggested by: <a href="@shijunjing" class="wikilink"
  title="https://github.com/shijunjing"><span>https://github.com/shijunjing</span></a>
- Status: Completed :heavy_check_mark: as
  <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  project by Yuqi Chen (<a href="@alyssachne" class="wikilink"
  title="https://github.com/alyssachne"><span>https://github.com/alyssachne</span></a>).
- Available at: <a
  href="https://github.com/tianocore/edk2-staging/tree/2021-gsoc-llvm-gnumake"
  class="wikilink"
  title="https://github.com/tianocore/edk2-staging/tree/2021-gsoc-llvm-gnumake">https://github.com/tianocore/edk2-staging/tree/2021-gsoc-llvm-gnumake</a>

### <s>Terminal driver improvements</s>

Optimize cursor motion sequences; support Linux/UNIX standard
(xterm/konsole/gnome-terminal/etc.) key codes and line-drawing
characters (currently one must set their terminal emulator to use code
page 437 for correct line drawing.)

- Difficulty: Medium
- Language: C
- Mentor: <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>
  and Rocio Hernandez Fabian
- Suggested by: bjjohnson, <a href="@nate-desimone" class="wikilink"
  title="https://github.com/nate-desimone"><span>https://github.com/nate-desimone</span></a>
- Status: Completed :heavy_check_mark: as
  <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  project by Caden Kline (<a href="@Pokemod97" class="wikilink"
  title="https://github.com/Pokemod97"><span>https://github.com/Pokemod97</span></a>).
- Available at: <a
  href="https://github.com/Pokemod97/edk2/tree/terminal-driver-characters-v3"
  class="wikilink"
  title="https://github.com/Pokemod97/edk2/tree/terminal-driver-characters-v3">https://github.com/Pokemod97/edk2/tree/terminal-driver-characters-v3</a>

More information:
<a href="Tasks-Terminal-driver-improvements" class="wikilink"
title="Tasks-Terminal-driver-improvements">Tasks-Terminal-driver-improvements</a>

## GSoC 2012

### <s>USB-to-serial driver</s>

Develop a USB driver for a common USB-to-serial adapter.

- Difficulty: Medium
- Language: C
- Mentor: <a href="@ErikBjorge" class="wikilink"
  title="https://github.com/ErikBjorge"><span>https://github.com/ErikBjorge</span></a>
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>
- Status: Completed :heavy_check_mark: as a
  <a href="GSoC2012" class="wikilink" title="GSoC2012">GSoC2012</a>
  project by Ashley DeSimone (<a href="@ashedesimone" class="wikilink"
  title="https://github.com/ashedesimone"><span>https://github.com/ashedesimone</span></a>).
- Available at
  <a href="edk2-platforms/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe"
  class="wikilink"
  title="https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe"><span>https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe</span></a>

More information:
<a href="Tasks-USB_Serial_Adapter_driver" class="wikilink"
title="Tasks-USB Serial Adapter driver">Tasks-USB Serial Adapter
driver</a>

## GSoC 2011

### <s>Read-only FFS file-system driver</s>

Develop a read-only filesystem driver which allows the contents of each
PI 1.2 FFS in the system to appear as a pseudo-file system.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>
- Status: Completed :heavy_check_mark: as a
  <a href="GSOC2011" class="wikilink" title="GSOC2011">GSOC2011</a>
  project by Colin Drake (<a href="@cfdrake" class="wikilink"
  title="https://github.com/cfdrake"><span>https://github.com/cfdrake</span></a>).
- Available at:
  <a href="edk2/tree/master/MdeModulePkg/Universal/FvSimpleFileSystemDxe"
  class="wikilink"
  title="https://github.com/tianocore/edk2/tree/master/MdeModulePkg/Universal/FvSimpleFileSystemDxe"><span>https://github.com/tianocore/edk2/tree/master/MdeModulePkg/Universal/FvSimpleFileSystemDxe</span></a>

More information:

- <a href="Tasks-Read-only_FFS_file-system_driver" class="wikilink"
  title="Tasks-Read-only FFS file-system driver">Tasks-Read-only FFS
  file-system driver</a>
- <a href="https://github.com/cfdrake/FileSystemPkg" class="wikilink"
  title="https://github.com/cfdrake/FileSystemPkg">https://github.com/cfdrake/FileSystemPkg</a>

## Other Completed Projects

### <s>Shell editor improvements</s>

Various improvements for the Shell editor

- Difficulty: Medium
- Language: C
- Mentor: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>,
  <a href="@ErikBjorge" class="wikilink"
  title="https://github.com/ErikBjorge"><span>https://github.com/ErikBjorge</span></a>,
  <a href="@jcarsey" class="wikilink"
  title="https://github.com/jcarsey"><span>https://github.com/jcarsey</span></a>
- Status: Available in main edk2 tree

More information: <a href="Tasks-Text_Editor" class="wikilink"
title="Tasks-Text Editor">Tasks-Text Editor</a>

### <s>Optimize OVMF for Xen HVM domains</s>

Add Xen specific support in
<a href="OVMF" class="wikilink" title="OVMF">OVMF</a> to improve boot &
runtime performance. <http://www.xen.org/>

- Difficulty: Medium/Hard
- Language: C
- Mentor:
- Suggested by: andreiwarkentin, Bei Guan
- Status: Implemented via
  <https://github.com/tianocore/edk2/issues/7876>

### <s>Port EmulatorPkg to Windows</s>

Port <a href="EmulatorPkg" class="wikilink"
title="EmulatorPkg">EmulatorPkg</a> to Microsoft Windows (32/64 bit), as
a replacement for <a href="NT32" class="wikilink" title="NT32">NT32</a>.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

More information:
<a href="Tasks-EmulatorPkg_for_Windows" class="wikilink"
title="Tasks-EmulatorPkg for Windows">Tasks-EmulatorPkg for Windows</a>

### <s>Add Visual Studio 2017 Support</s>

Microsoft Visual Studio will be released March 7, 2017. Add VS2017 build
support to EDK II.

### <s>Port Intel Firmware Engine SDK Extensions to OVMF</s>

Intel Firmware Engine adds UserExtensions in the SDK to describe
connections between modules and module parameters (as "Patchable In
Binary" PCDs). This enables binary distribution of configurable firmware
components. Porting these extensions to a branch of OVMF would allow
development and testing of these concepts on a virtual platform.

- Status: This application has EOL'd as of Aug 2019
- Languages: C, Python
- Mentor: <a href="@jcarsey" class="wikilink"
  title="https://github.com/jcarsey"><span>https://github.com/jcarsey</span></a>

### <s>Enable Xen Support in OVMF</s>

Get Xen to boot UEFI with
<a href="OVMF" class="wikilink" title="OVMF">OVMF</a>.

- Difficulty: Hard (depending on tasks taken on)
- Language: C
- Mentor: andreiwarkentin, <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>
- Suggested by: andreiwarkentin
- Status: Available in main edk2 tree

### <s>Multiprocessor support in UefiCpuPkg/CpuDxe</s>

Enable multiprocessor support for IA32 & X64 within UefiCpuPkg/CpuDxe.
(Implement MdePkg/Include/Protocol/MpService.h)

- Difficulty: Medium
- Language: Assembly, C
- Mentor:
- Suggested by: <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>
- Status: Available in EDK II tree

More information:
<a href="Tasks-UefiCpuPkg-CpuDxe_MP_support" class="wikilink"
title="Tasks-UefiCpuPkg-CpuDxe MP support">Tasks-UefiCpuPkg-CpuDxe MP
support</a>

### <s>Enable Link-time Code Optimization for Linux builds</s>

Enable Link-time Code Optimization on Linux for either GCC or
LLVM/CLANG. <http://gcc.gnu.org/wiki/LinkTimeOptimization>

This feature hopefully would significantly reduce code generation size
for Linux based builds.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>,
  <a href="@jljusten" class="wikilink"
  title="https://github.com/jljusten"><span>https://github.com/jljusten</span></a>
- Status: Available in GCC5 & CLANG38 toolchains

# See Also

- <a href="How_To_Contribute" class="wikilink"
  title="How To Contribute">How To Contribute</a>
