# Complete Tasks

These tasks have already been completed and are examples of successful
projects from prior years.

## Previously Complete Projects

## GSoC 2021

### ext4 driver

Develop a read-only ext4 filesystem driver.
[http://en.wikipedia.org/wiki/Ext4](http://en.wikipedia.org/wiki/Ext4)

- Difficulty: Medium ... Hard
- Language: C
- Mentors: Mike Kinney ([https://github.com/mdkinney](https://github.com/mdkinney))
  and Bret Barkelew ([https://github.com/corthon](https://github.com/corthon))
- Suggested by: rsun3
- Status: Completed :heavy_check_mark: as
  [GSoC2021](GSoC2021)
  project by Pedro Falcato ([https://github.com/heatd](https://github.com/heatd)).
- Available at:
  [https://github.com/tianocore/edk2-platforms/tree/master/Features/Ext4Pkg](https://github.com/tianocore/edk2-platforms/tree/master/Features/Ext4Pkg)

More information:
[Tasks-ext2 file-system driver](Tasks-ext2_file-system_driver)

### Port MinPlatform to the Acer Aspire VN7-572G

Build a MinPlatform board port for the Acer Aspire VN7-572G.

- Language: C
- Mentors: Nate DeSimone ([https://github.com/nate-desimone](https://github.com/nate-desimone)),
  Isaac Oram ([https://github.com/iworam](https://github.com/iworam)),
  and Michael Kubacki ([https://github.com/makubacki](https://github.com/makubacki))
- Suggested by: [https://github.com/nate-desimone](https://github.com/nate-desimone)
- Status: Completed :heavy_check_mark: as
  [GSoC2021](GSoC2021)
  project by Benjamin Doron ([https://github.com/benjamindoron](https://github.com/benjamindoron)).
- Available at:
  [https://github.com/tianocore/edk2-platforms/tree/master/Platform/Intel/KabylakeOpenBoardPkg/AspireVn7Dash572G](https://github.com/tianocore/edk2-platforms/tree/master/Platform/Intel/KabylakeOpenBoardPkg/AspireVn7Dash572G)

More information:
[https://gist.github.com/benjamindoron/cf9ce28bba0b6356113918a40814af30](https://gist.github.com/benjamindoron/cf9ce28bba0b6356113918a40814af30)

### Formally Verified PE/COFF Loader

- Language: C
- Mentors: Bret Barkelew ([https://github.com/corthon](https://github.com/corthon))
  and Benjamin You ([https://github.com/BenjaminYou](https://github.com/BenjaminYou))
- Suggested by: [https://github.com/mhaeuser](https://github.com/mhaeuser)
- Status: Completed :heavy_check_mark: as
  [GSoC2021](GSoC2021)
  project by Marvin Häuser ([https://github.com/mhaeuser](https://github.com/mhaeuser)).

More information:
[https://github.com/mhaeuser/gsoc-2021-edk2-pe-loader](https://github.com/mhaeuser/gsoc-2021-edk2-pe-loader)

### Enable Clang/LLVM Build for Microsoft Windows

[https://llvm.org/](https://llvm.org/) support in
[EDK II](EDK_II) is currently
limited to Linux builds. Getting LLVM running on Windows would enable
the TianoCore project to support Clang and the LLVM toolchain more
robustly. Microsoft Windows 10 should be the primary target.

- Difficulty: Medium
- Language: C, Python
- Mentor: [https://github.com/shijunjing](https://github.com/shijunjing)
- Suggested by: [https://github.com/shijunjing](https://github.com/shijunjing)
- Status: Completed :heavy_check_mark: as
  [GSoC2021](GSoC2021)
  project by Yuqi Chen ([https://github.com/alyssachne](https://github.com/alyssachne)).
- Available at:
  [https://github.com/tianocore/edk2-staging/tree/2021-gsoc-llvm-gnumake](https://github.com/tianocore/edk2-staging/tree/2021-gsoc-llvm-gnumake)

### Terminal driver improvements

Optimize cursor motion sequences; support Linux/UNIX standard
(xterm/konsole/gnome-terminal/etc.) key codes and line-drawing
characters (currently one must set their terminal emulator to use code
page 437 for correct line drawing.)

- Difficulty: Medium
- Language: C
- Mentor: [https://github.com/nate-desimone](https://github.com/nate-desimone)
  and Rocio Hernandez Fabian
- Suggested by: bjjohnson, [https://github.com/nate-desimone](https://github.com/nate-desimone)
- Status: Completed :heavy_check_mark: as
  [GSoC2021](GSoC2021)
  project by Caden Kline ([https://github.com/Pokemod97](https://github.com/Pokemod97)).
- Available at:
  [https://github.com/Pokemod97/edk2/tree/terminal-driver-characters-v3](https://github.com/Pokemod97/edk2/tree/terminal-driver-characters-v3)

More information:
[Tasks-Terminal-driver-improvements](Tasks-Terminal-driver-improvements)

## GSoC 2012

### USB-to-serial driver

Develop a USB driver for a common USB-to-serial adapter.

- Difficulty: Medium
- Language: C
- Mentor: [https://github.com/ErikBjorge](https://github.com/ErikBjorge)
- Suggested by: [https://github.com/jljusten](https://github.com/jljusten)
- Status: Completed :heavy_check_mark: as a
  [GSoC2012](GSoC2012)
  project by Ashley DeSimone ([https://github.com/ashedesimone](https://github.com/ashedesimone)).
- Available at
  [https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe](https://github.com/tianocore/edk2-platforms/tree/master/Drivers/OptionRomPkg/Bus/Usb/FtdiUsbSerialDxe)

More information:
[Tasks-USB Serial Adapter
driver](Tasks-USB_Serial_Adapter_driver)

## GSoC 2011

### Read-only FFS file-system driver

Develop a read-only filesystem driver which allows the contents of each
PI 1.2 FFS in the system to appear as a pseudo-file system.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: [https://github.com/mdkinney](https://github.com/mdkinney)
- Status: Completed :heavy_check_mark: as a
  [GSOC2011](GSOC2011)
  project by Colin Drake ([https://github.com/cfdrake](https://github.com/cfdrake)).
- Available at:
  [https://github.com/tianocore/edk2/tree/master/MdeModulePkg/Universal/FvSimpleFileSystemDxe](https://github.com/tianocore/edk2/tree/master/MdeModulePkg/Universal/FvSimpleFileSystemDxe)

More information:

- [Tasks-Read-only FFS
  file-system driver](Tasks-Read-only_FFS_file-system_driver)
- [https://github.com/cfdrake/FileSystemPkg](https://github.com/cfdrake/FileSystemPkg)

## Other Completed Projects

### Shell editor improvements

Various improvements for the Shell editor

- Difficulty: Medium
- Language: C
- Mentor: [https://github.com/jljusten](https://github.com/jljusten)
- Suggested by: [https://github.com/jljusten](https://github.com/jljusten),
  [https://github.com/ErikBjorge](https://github.com/ErikBjorge),
  [https://github.com/jcarsey](https://github.com/jcarsey)
- Status: Available in main edk2 tree

More information: [Tasks-Text Editor](Tasks-Text_Editor)

### Optimize OVMF for Xen HVM domains

Add Xen specific support in
[OVMF](OVMF) to improve boot &
runtime performance. [http://www.xen.org/](http://www.xen.org/)

- Difficulty: Medium/Hard
- Language: C
- Mentor:
- Suggested by: andreiwarkentin, Bei Guan
- Status: Implemented via
  [https://github.com/tianocore/edk2/issues/7876](https://github.com/tianocore/edk2/issues/7876)

### Port EmulatorPkg to Windows

Port [EmulatorPkg](EmulatorPkg) to Microsoft Windows (32/64 bit), as
a replacement for [NT32](NT32).

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: [https://github.com/ajfish](https://github.com/ajfish)

More information:
[Tasks-EmulatorPkg for Windows](Tasks-EmulatorPkg_for_Windows)

### Add Visual Studio 2017 Support

Microsoft Visual Studio will be released March 7, 2017. Add VS2017 build
support to EDK II.

### Port Intel Firmware Engine SDK Extensions to OVMF

Intel Firmware Engine adds UserExtensions in the SDK to describe
connections between modules and module parameters (as "Patchable In
Binary" PCDs). This enables binary distribution of configurable firmware
components. Porting these extensions to a branch of OVMF would allow
development and testing of these concepts on a virtual platform.

- Status: This application has EOL'd as of Aug 2019
- Languages: C, Python
- Mentor: [https://github.com/jcarsey](https://github.com/jcarsey)

### Enable Xen Support in OVMF

Get Xen to boot UEFI with
[OVMF](OVMF).

- Difficulty: Hard (depending on tasks taken on)
- Language: C
- Mentor: andreiwarkentin, [https://github.com/jljusten](https://github.com/jljusten)
- Suggested by: andreiwarkentin
- Status: Available in main edk2 tree

### Multiprocessor support in UefiCpuPkg/CpuDxe

Enable multiprocessor support for IA32 & X64 within UefiCpuPkg/CpuDxe.
(Implement MdePkg/Include/Protocol/MpService.h)

- Difficulty: Medium
- Language: Assembly, C
- Mentor:
- Suggested by: [https://github.com/jljusten](https://github.com/jljusten)
- Status: Available in EDK II tree

More information:
[Tasks-UefiCpuPkg-CpuDxe MP
support](Tasks-UefiCpuPkg-CpuDxe_MP_support)

### Enable Link-time Code Optimization for Linux builds

Enable Link-time Code Optimization on Linux for either GCC or
LLVM/CLANG. [http://gcc.gnu.org/wiki/LinkTimeOptimization](http://gcc.gnu.org/wiki/LinkTimeOptimization)

This feature hopefully would significantly reduce code generation size
for Linux based builds.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: [https://github.com/ajfish](https://github.com/ajfish),
  [https://github.com/jljusten](https://github.com/jljusten)
- Status: Available in GCC5 & CLANG38 toolchains

## See Also

- [How To Contribute](How_To_Contribute)
