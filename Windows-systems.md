# Windows Systems

\_\_NOTOC\_\_

`Note: New build instructions are available. It is recommended to start with the new instructions if learning how to`
`build edk2 for the first time. This page is retained for reference.`

New instructions: <a href="Build_Instructions" class="wikilink"
title="Build Instructions">Build Instructions</a>

This page provides step-by-step instructions or setting up a [EDK
II](http://www.tianocore.org/edk2/) build environment on Windows
systems.

<u>*Table of Contents*</u>

- <a href="Windows-systems#github-help" class="wikilink"
  title="GitHub Help">GitHub Help</a>
- <a href="Windows-systems#how-to-setup-the-edk-ii-tree" class="wikilink"
  title=" How to Setup the EDK II Tree"> How to Setup the EDK II Tree</a>
- <a href="Windows-systems#download" class="wikilink" title=" Download">
  Download</a> Checkout EDK II source tree from Github
- <a href="Windows-systems#compile-tools" class="wikilink"
  title="Compile Tools">Compile Tools</a> Build EDK II BaseTools for
  Windows
- <a href="Windows-systems#build" class="wikilink" title=" BUILD">
  BUILD</a> EDK II

## GitHub Help

GitHub (<https://help.github.com/index.html>) provides step-by-step
instructions for user registration and basic features supported by
GitHub.

### Git GUI Interface for Windows OS

- Git for Windows OS is available at: (<http://git-scm.com/download/win>)
- TortoiseGit for windows OS is available at
  (<https://tortoisegit.org/download/>)

## GitHub EDK II Project Repositories

- The EDK II project repository is available at
  <https://github.com/tianocore/edk2>.

Content that is not released under an accepted open source license can
be found at <https://github.com/tianocore/edk2-non-osi>.

Note: the steps below will pull the latest code from edk2 master. To
work from a stable release, please refer to the Microsoft Windows build
steps for
<a href="UDK2017" class="wikilink" title="UDK2017">UDK2017</a>:
<https://github.com/tianocore/tianocore.github.io/wiki/UDK2017-How-to-Build#how-to-build-windows-system>

### Internet proxies

If your network utilizes a firewall with a web proxy, then you may need
to configure your proxy information for various command line
applications to work. You may need to consult with your network
administrator to find out the computer name and port to use for proxy
setup. The following commands are common **Git Bash** examples of how
you would configure your proxy by setting an environment variable:

        git config --global https.proxy <proxyname>.domain.com:<port>
        git config --global http.proxy <proxyname>.domain.com:<port>

## How to Setup the EDK II Tree

**Note:** Some of the following examples use the Multiple Workspace
feature to configure the EDK II BaseTools. More information on the
Multiple Workspace feature can be found at the following location.
\* <a href="Multiple_Workspace" class="wikilink"
title="Multiple_Workspace">Multiple_Workspace</a>

## Download

Download/Checkout the EDK II source tree from Github

### Download Using a Web browser

1. Download EDK II Project
    1. Open <https://github.com/tianocore/edk2> in web browser
    2. Click on the *Clone or Download* button (Right Green)
    3. Click on Download ZIP
    4. Unzip to C:/
    5. Rename directory “edk2-master” to “edk2”

Continue to <a href="Windows-systems#compile-tools" class="wikilink"
title="Compile Tools">Compile Tools</a>

### Using Git for Windows Application

#### Git GUI

1. Clone the EDK II project repository
    1. Open Git GUI
    2. Use *Clone Exiting Repository* with Source location
        <https://github.com/tianocore/edk2.git>
    3. Select a Target directory C:/edk2
    4. Check Recursively clone submodules too
    5. click Clone button

Continue to <a href="Windows-systems#compile-tools" class="wikilink"
title="Compile Tools">Compile Tools</a> section

#### Git CMD

If you use the command line version, then you can easily checkout the
edk2 to the C:\edk2 directory with the following git command: Main
repository: <https://github.com/tianocore/edk2>

        $git clone https://github.com/tianocore/edk2

Continue to <a href="Windows-systems#compile-tools" class="wikilink"
title="Compile Tools">Compile Tools</a> and then
<a href="Windows-systems#build" class="wikilink" title=" BUILD">
BUILD</a> sections

## Compile Tools

##### For EDK II project developers on Windows with source BaseTools

- Create a workspace directory
- Change to the workspace directory
- Clone the EDK II project repository (See
  <a href="Windows-systems#download" class="wikilink" title=" Download">
  Download</a> section above)
  - Example: git clone <https://github.com/tianocore/edk2>
- Install Python37 or late version (<https://www.python.org/>) to run
  python tool from source
- Compile BaseTools C source tools

Example:

- Inside Git Bash

         git clone https://github.com/tianocore/edk2

##### Compile BaseTools

Example:

- Open Command prompt and CD C:\edk2:

         C:\edk2> set PYTHON_HOME=C:\Python37
         C:\edk2> edksetup.bat Rebuild

## Build

- Set up the
  <a href="Nasm-Setup" class="wikilink" title=" Nasm"> Nasm</a> open
  source assembly compiler
- Set up the
  <a href="Asl_Setup" class="wikilink" title=" ASL Compiler"> ASL
  Compiler</a>
- <a href="Windows-systems#compile-tools" class="wikilink"
  title="Compile Tools">Compile Tools</a> above
- Open a Windows CMD prompt:
- Change to the edk2 directory
- Run the edksetup.bat script

`C:\Users\MySid> CD \edk2`
`C:\edk2> edksetup`

### Build MdeModulePkg

#### Modify Conf files

You will need to edit the Conf\target.txt file. First, change the
ACTIVE_PLATFORM to the MdeModulePkg:

    C:\edk2> notepad Conf\target.txt

ACTIVE_PLATFORM should look like this in Conf\target.txt:

    ACTIVE_PLATFORM       = MdeModulePkg/MdeModulePkg.dsc

Modify TOOL_CHAIN_TAG in target.txt for the toolchain installed on your
system. There are many options, so review the tools_def.txt to find the
appropriate toolchain for your system. Search for 'Supported Tool
Chains' in tools_def.txt to see the valid options for TOOL_CHAIN_TAG.

    TOOL_CHAIN_TAG        = VS2015x86

See also: <a href="Windows-systems-ToolChain-Matrix" class="wikilink"
title="Windows-systems-ToolChain-Matrix">Windows-systems-ToolChain-Matrix</a>
for how to change the Tool Chain Tag.

Also, consider if you want to build a different processor architecture
by changing the TARGET_ARCH value in target.txt. Please consider that
certain toolchains only support building certain processor
architectures.

#### Build Hello World! (and the rest of MdeModulePkg)

Now you should be able to simply run the build command to compile the
MdeModulePkg.

    C:\edk2> build

As a tangible result of the build, you should have the HelloWorld UEFI
application. If you have a UEFI system available to you which matches
the processor architecture that you built, then this application should
be able to run successfully under the shell.

    C:\edk2> dir /s Build\MdeModule\DEBUG_...\IA32\HelloWorld.efi

### Build OVMF (OPTIONAL)

Once your build environment is set up you might be interested in
building the <a href="OVMF" class="wikilink" title="OVMF">OVMF</a>
platform which is included in the main edk2 source tree. Since
<a href="OVMF" class="wikilink" title="OVMF">OVMF</a> builds a full
system firmware image this may be of interest to UEFI system firmware
developers.

# See Also

- <a href="Getting-Started-Writing-Simple-Application" class="wikilink"
  title="Getting-Started-Writing-Simple-Application">Getting-Started-Writing-Simple-Application</a>
