\_\_NOTOC\_\_

` Note: New build instructions are available. It is recommended to start with the new instructions if learning how to`
`       build edk2 for the first time. This page is retained for reference.`

New instructions: <a href="Build_Instructions" class="wikilink"
title="Build Instructions">Build Instructions</a>

# Downloading and Compiling Code

This page shows the steps for downloading
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a> from GitHub
and compiling projects under various OS/compiler environments.

## How to Setup a Local EDK II Tree

Several build environments are supported and documented. If instructions
are not available for your exact system configuration, you may still be
able to tweak the instructions to work on your system.

- Linux: <a href="Using_EDK_II_with_Native_GCC" class="wikilink"
  title="Using EDK II with Native GCC">Using EDK II with Native GCC</a>
  (recommended for current versions of Linux)
- Microsoft Windows: <a href="Windows_systems" class="wikilink"
  title="Windows systems">Windows systems</a> (Win7/8/8.1/10)
- Mac OS X: <a href="Xcode" class="wikilink" title="Xcode">Xcode</a>
- UNIX: <a href="Unix-like_systems" class="wikilink"
  title="Unix-like systems">Unix-like systems</a> (For non-Linux UNIX,
  older Linux distros, or when using Cygwin)

**Note:** Some other build tools may be required depending on the
project or package:

- <a href="Nasm_Setup" class="wikilink" title="Nasm">Nasm</a>
- <a href="ASL_Setup" class="wikilink" title="ASL Compiler">ASL
  Compiler</a>
- Install Python 3.7 or later (https://www.python.org/) to run python
  tool from source
  - Python 2.7.10 or later can still be used with PYTHON_HOME

**Note:** Some of the examples use the
<a href="Multiple_Workspace" class="wikilink"
title="Multiple_Workspace">Multiple_Workspace</a> \`PACKAGES_PATH\`
feature to the configure EDK II build environment. For example, this is
required for using platform code based on edk2-platforms:
(https://github.com/tianocore/edk2-platforms).

Once you have a basic build environment running, you can build a project
in RELEASE or
<a href="EDK_II_Debugging" class="wikilink" title="DEBUG">DEBUG</a>
mode.

## GitHub Help

GitHub (https://help.github.com/index.html) provides step-by-step
instructions for user registration and basic features supported by
GitHub

- Setup GitHub for Linux/Windows/MAC
  (https://help.github.com/articles/set-up-git)
- Download and install a git GUI interface: git GUI Clients
  (https://git-scm.com/download/gui/win) \| TortoiseGit
  (https://tortoisegit.org/)

### GitHub EDK II Project Repositories

- The EDK II project repository is available at
  <https://github.com/tianocore/edk2>.
- Prebuilt Windows tools are available at
  <https://github.com/tianocore/edk2-BaseTools-win32>.
- <a href="EDK_II_Platforms" class="wikilink" title="EDK II Platforms">EDK
  II Platforms</a> are available at
  <https://github.com/tianocore/edk2-platforms>.
- Content that is not released under an accepted open source license can
  be found at <https://github.com/tianocore/edk2-non-osi>.

## EDK II Development Process

After setting up your build environment see
<a href="EDK_II_Development_Process" class="wikilink"
title="EDK II Development Process">EDK II Development Process</a> for
making contributions to the EDK II Project.

## Further Help

If you have questions about the code or run into obstacles getting
things to work, please join the EDK II developer
<a href="Mailing-Lists" class="wikilink"
title="Mailing-Lists">Mailing-Lists</a> and ask your EDK II related
questions on the list.

For info on writing a simple UEFI EDK II Application, see:
<a href="Getting_Started_Writing_Simple_Application" class="wikilink"
title="Getting Started Writing Simple Application">Getting Started
Writing Simple Application</a>

To review the basic setup of .DSC, .DEC, and .INF files, see:
<a href="Build_Description_Files" class="wikilink"
title="Build Description Files">Build Description Files</a>
