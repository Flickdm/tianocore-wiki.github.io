# Tasks Ext2 File System Driver

Develop an <a href="ext2" class="wikilink"
title="https://en.wikipedia.org/wiki/Ext2"><span>https://en.wikipedia.org/wiki/Ext2</span></a>
filesystem driver. (read-only support would be useful as a first step)

- Status: Complete :heavy_check_mark:
- Difficulty: Medium ... Hard
- Language: C
- Mentors: <a href="Mike_Kinney" class="wikilink"
  title="https://github.com/mdkinney"><span>https://github.com/mdkinney</span></a>
  and <a href="Bret_Barkelew" class="wikilink"
  title="https://github.com/corthon"><span>https://github.com/corthon</span></a>
- Suggested by: rsun3

# Status

- Completed :heavy_check_mark:.
- Instead of implementing an ext2 driver as originally proposed, a much
  more useful <a href="ext4" class="wikilink"
  title="https://en.wikipedia.org/wiki/Ext4"><span>https://en.wikipedia.org/wiki/Ext4</span></a>
  driver was implemented instead!
- Work done by Pedro Falcato (<a href="@heatd" class="wikilink"
  title="https://github.com/heatd"><span>https://github.com/heatd</span></a>)
  as a <a href="GSoC2021" class="wikilink" title="GSoC2021">GSoC2021</a>
  Student.

# Older Work

- Before GSoC 2021, some progress was made during
  <a href="GSOC2011" class="wikilink" title="GSOC2011">GSOC2011</a> by
  Alin Rus
  - Source: <https://github.com/GunioRobot/Ext2Pkg>
- A newer effort has been started based on GRUB filesystem drivers,
  however this code cannot be merged to TianoCore due to GRUB being
  licensed under the GPL.
  - <https://github.com/pbatard/efifs/tree/master/>

# Details

Filesystems in UEFI can be accessed through the SimpleFileSystem
protocol. This protocol is the defined within
[SimpleFileSystem.h](https://github.com/tianocore/edk2/blob/master/MdePkg/Include/Protocol/SimpleFileSystem.h).

This project should be completed with a BSD compatible solution. This
would mean that GPL licenses ext2 code or header files cannot be used.
You would need to investigate ext2's disk format by looking for
documentation, consulting with ext2(+) developers, or (as a last resort)
by examining the disk contents.

It may be possible to leverage BSD compatible code from a reputable open
source project, but using 3rd-party code does add some extra complexity
(see <a href="Code_Contributions" class="wikilink"
title="Code Contributions">Code Contributions</a>).

# Development environment

Building: This project can be completed on any edk2 supported OS or
toolchain.

Testing:
[OVMF](https://github.com/tianocore/tianocore.github.io/wiki/OVMF) would
probably provide the easiest environment for testing your project. You
should be able to build your driver into OVMF and then run OVMF with a
hard disk image that contains an ext2 file-system.

# Further Discussion

This project would be for an edk2 based driver, so please discuss the
project on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>.

# See Also

- <a href="Tasks" class="wikilink" title="Tasks">Tasks</a>
- <a href="GSOC2011#Read-only_ext2_driver" class="wikilink"
  title="GSOC2011#Read-only ext2 driver">GSOC2011#Read-only ext2
  driver</a>
