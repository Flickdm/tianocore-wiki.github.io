Create a Windows based host environment for
<a href="EmulatorPkg" class="wikilink"
title="EmulatorPkg">EmulatorPkg</a>.

- Status: Complete :heavy_check_mark:
- Difficulty: Medium
- Language: C
- Mentor:
- Suggested by: <a href="@ajfish" class="wikilink"
  title="https://github.com/ajfish"><span>https://github.com/ajfish</span></a>

# Status

Completed :heavy_check_mark: by <a href="@niruiyu" class="wikilink"
title="https://github.com/niruiyu"><span>https://github.com/niruiyu</span></a>
in 2018.

# Details

EmulatorPkg is very similar in many respects to the
<a href="Nt32Pkg" class="wikilink" title="Nt32Pkg">Nt32Pkg</a>, but it
should be generic enough to replace both
<a href="Nt32Pkg" class="wikilink" title="Nt32Pkg">Nt32Pkg</a> and
<a href="UnixPkg" class="wikilink" title="UnixPkg">UnixPkg</a>.

This task would be to enable a Windows host environment for EmulatorPkg
so we can consider deprecating Nt32Pkg and UnixPkg in favor of using
EmulatorPkg.

# Development environment

Building: This project most likely would be completed on Windows with
Visual Studio C++.

It would also be desireable to be able to support building and running
the Windows host on Linux by building with mingw and running under Wine.
Therefore, it would also be possible to develop this project under
Linux.

Testing: Run the emulator on Windows or with Wine.

# Sub-goals

Some possible sub-goals for the driver

- Enter SEC phase of EmulatorPkg boot
- Enter PEI phase of EmulatorPkg boot
- Enter DXE phase of EmulatorPkg boot
- Enable multi-threading support
- Enable networking support

# Further Discussion

Please discuss the project on <a href="edk2-devel" class="wikilink"
title="https://edk2.groups.io/g/devel"><span>https://edk2.groups.io/g/devel</span></a>.

# See Also

- <a href="Tasks" class="wikilink" title="Tasks">Tasks</a>
- <a href="GSoC2012#Port_EmulatorPkg_to_Windows" class="wikilink"
  title="GSoC2012#Port EmulatorPkg to Windows">GSoC2012#Port EmulatorPkg
  to Windows</a>
