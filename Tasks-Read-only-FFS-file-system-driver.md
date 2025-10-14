Develop a read-only file system driver which allows the contents of each
PI 1.2 FFS in the system to appear as a UEFI file system.

- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@mdkinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>

# Status

- Completed :heavy_check_mark:
- Work done by Colin Drake as a
  <a href="GSOC2011" class="wikilink" title="GSOC2011">GSOC2011</a>
  student.
  - Source: <https://github.com/cfdrake/FileSystemPkg>

# Details

The PI 1.2 Firmware File System (FFS) allows firmware elements to be
packed efficiently into flash memory.

The FirmwareVolume2 protocol allows firmware code to easily access the
contents of each FFS. This protocol is defined within
[FirmwareVolume2.h](https://github.com/tianocore/edk2/blob/master/MdePkg/Include/Protocol/FirmwareVolume2.h).

Filesystems (generally disk based) in UEFI can be accessed through the
SimpleFileSystem protocol. This protocol is the defined within
[SimpleFileSystem.h](https://github.com/tianocore/edk2/blob/master/MdePkg/Include/Protocol/SimpleFileSystem.h).

This project would involve reading each FirmwareVolume2 protocol
instance and from it producing a SimpleFileSystem instance. Each FFS
file appear as a readable file.

Each FFS file which contains a PE/COFF section should have a .efi file
available in the system. An example uses of this would be to allow UEFI
applications stored in the FFS to be run from the UEFI shell.

# Development environment

Building: This project can be completed on any edk2 supported OS or
toolchain.

Testing: This project can be tested on any PI 1.2 system. Even without
loading the driver into flash, it can be loaded by using the EFI shell
'load' command. [OVMF](http://www.tianocore.org/ovmf/),
<a href="Nt32Pkg" class="wikilink" title="Nt32Pkg">Nt32Pkg</a> or
<a href="UnixPkg" class="wikilink" title="UnixPkg">UnixPkg</a> could
each provide friendly test environments.

# Further Discussion

This project would be for an edk2 based driver, so please discuss the
project on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>.

# See Also

- <a href="Tasks" class="wikilink" title="Tasks">Tasks</a>
- <a href="GSOC2011#Read-only_FFS_file-system_driver" class="wikilink"
  title="GSOC2011#Read-only FFS file-system driver">GSOC2011#Read-only FFS
  file-system driver</a>
