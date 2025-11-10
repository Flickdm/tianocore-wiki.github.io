# Getting Started With Edk Ii

\_\_NOTOC\_\_

`Note: New build instructions are available. It is recommended to start with the new instructions if learning how to`
`build edk2 for the first time. This page is retained for reference.`

New instructions: [Build Instructions](Build-Instructions.md)

# Downloading and Compiling Code

This page shows the steps for downloading
[EDK II](EDK_II) from GitHub
and compiling projects under various OS/compiler environments.

## How to Setup a Local EDK II Tree

Several build environments are supported and documented. If instructions
are not available for your exact system configuration, you may still be
able to tweak the instructions to work on your system.

- Linux: [Using EDK II with Native GCC](Using-EDK-II-with-Native-GCC.md)
  (recommended for current versions of Linux)
- Microsoft Windows: [Windows systems](Windows-systems.md) (Win7/8/8.1/10)
- Mac OS X: [Xcode](Xcode)
-- UNIX: [Unix-like systems](Unix-like-systems.md) (For non-Linux UNIX,
  older Linux distros, or when using Cygwin)

**Note:** Some other build tools may be required depending on the
project or package:

- [Nasm](Nasm_Setup)
- [ASL
  Compiler](ASL_Setup)
- Install Python 3.7 or later ([https://www.python.org/](https://www.python.org/)) to run python
  tool from source
  - Python 2.7.10 or later can still be used with PYTHON_HOME

**Note:** Some of the examples use the
[Multiple_Workspace](Multiple_Workspace) \`PACKAGES_PATH\`
feature to the configure EDK II build environment. For example, this is
required for using platform code based on edk2-platforms:
([https://github.com/tianocore/edk2-platforms](https://github.com/tianocore/edk2-platforms)).

Once you have a basic build environment running, you can build a project
in RELEASE or
[DEBUG](EDK_II_Debugging)
mode.

## GitHub Help

GitHub ([https://help.github.com/index.html](https://help.github.com/index.html)) provides step-by-step
instructions for user registration and basic features supported by
GitHub

- Setup GitHub for Linux/Windows/MAC
  ([https://help.github.com/articles/set-up-git](https://help.github.com/articles/set-up-git))
- Download and install a git GUI interface: git GUI Clients
  ([https://git-scm.com/download/gui/win](https://git-scm.com/download/gui/win)) \| TortoiseGit
  ([https://tortoisegit.org/](https://tortoisegit.org/))

### GitHub EDK II Project Repositories

- The EDK II project repository is available at
  [https://github.com/tianocore/edk2](https://github.com/tianocore/edk2).
- Prebuilt Windows tools are available at
  [https://github.com/tianocore/edk2-BaseTools-win32](https://github.com/tianocore/edk2-BaseTools-win32).
- [EDK
  II Platforms](EDK_II_Platforms) are available at
  [https://github.com/tianocore/edk2-platforms](https://github.com/tianocore/edk2-platforms).
- Content that is not released under an accepted open source license can
  be found at [https://github.com/tianocore/edk2-non-osi](https://github.com/tianocore/edk2-non-osi).

## EDK II Development Process

After setting up your build environment see
[EDK II Development Process](EDK_II_Development_Process) for
making contributions to the EDK II Project.

## Further Help

If you have questions about the code or run into obstacles getting
things to work, please join the EDK II developer
[Mailing-Lists](Mailing-Lists) and ask your EDK II related
questions on the list.

For info on writing a simple UEFI EDK II Application, see:
[Getting Started
Writing Simple Application](Getting_Started_Writing_Simple_Application)

To review the basic setup of .DSC, .DEC, and .INF files, see:
[Build Description Files](Build_Description_Files)
