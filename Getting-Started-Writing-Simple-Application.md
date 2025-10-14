# Getting Started Writing Simple Application

<span style="font-size: 15.0pt; text-align: center; font-family: Verdana; color: #004280; font-weight: bold; font-style: normal">**How
to Write a Simple EDK II UEFI Application** </span>

### 1) Create a Work Space Directory

e.g. <span style="font-family: Courier">mkdir edk2</span>

### 2) Download the Edk II source and build tools

1. Latest EDK II source from following Instructions on
    <a href="Getting-Started-with-EDK-II" class="wikilink"
    title=" Step by step instructions"> Step by step instructions</a>
    1. i.e. example \>git clone <https://github.com/tianocore/edk2.git>

OR

1. Download the latest .zip
    <a href="UDK2017" class="wikilink" title="UDK2017">UDK2017</a>
    Download release (or Latest
    <a href="UDK" class="wikilink" title="UDK">UDK</a> release).

=== 3) Run the ***edksetup**'' === Run***edksetup --nt32**'' script from
the command line prompt at the Work Space directory

1. Windows Comand Prompt:
    <span style="font-family: Courier">**C:\edk2\> edksetup --nt32**
    </span>
2. Linux like: <span style="font-family: Courier">**bash\$ .
    edksetup.sh BaseTools**</span>

### 4) Edit the file conf/target.txt

Modify **TARGET_ARCH** and **TOOL_CHAIN_TAG** as required.

1. TOOL_CHAIN_TAG see:
    1. Windows
        <a href="Windows_systems_ToolChain_Matrix" class="wikilink"
        title="Windows systems ToolChain Matrix">Windows systems ToolChain
        Matrix</a>
    2. Newer versions of
        Linux<a href="Using_EDK_II_with_Native_GCC" class="wikilink"
        title="Using EDK II with Native GCC">Using EDK II with Native GCC</a>
    3. Older Linux distributions
        <a href="Unix-like_systems" class="wikilink"
        title="Unix-like systems">Unix-like systems</a>
    4. Mac OS X
        <a href="Xcode" class="wikilink" title="Xcode">Xcode</a>
2. TARGET_ARCH - Optional can also use
    <span style="font-size: 10.0pt; font-family: Courier">**"-a"**
    </span> on the BUILD command line
    1. Both IA32 and X64 :
        <span style="font-size: 10.0pt; font-family: Courier">
        **TARGET_ARCH = IA32 X64**</span>
    2. Just X64 :
        <span style="font-size: 10.0pt; font-family: Courier">
        **TARGET_ARCH = X64**</span>
    3. On the commnad line overriding the target.txt:
        <span style="font-size: 10.0pt; font-family: Courier"> **BUILD
        -a X64**</span>

### 5) Create a project

1. Create a new directory. Can be a directory anywhere within the Work
    Space Directory (e.g. C:\edk2\\*MyHelloWorld* or
    ~/src/edk2/*MyHelloWorld*)
2. Create a .c file in the project directory (see example:
    <a href="Getting_Started_Writing_MyHelloWorld.c" class="wikilink"
    title=" MyHelloWorld.c"> MyHelloWorld.c</a>)
3. Create a .inf file in the project directory (see examle:
    <a href="Getting-Started-Writing-MyHelloWorld.inf" class="wikilink"
    title=" MyHelloWorld.inf"> MyHelloWorld.inf</a>)

### 6) Build your UEFI Application

#### Build X64 UEFI Application

1. Update an existing platform .DSC file with your project .inf file.
    The following list some examples.
    1. Edit the DuetPkg/DuetPkgX64.dsc and add your new application to
        the the <span style="font-family: Courier"> \[Components\]
        </span> section and before the
        <span style="font-family: Courier"> \[BuildOptions\] </span>
        section. (e.g. <span style="font-family: Courier">
        MyHelloWorld/MyHelloWorld.inf </span>)
2. Invoke the Build
    1. At the command prompt \>
        <span style="font-family: Courier">**Build -a X64 -p
        DuetPkg/DuetPkgX64.dsc** </span>
3. Final Output .efi file will be in the directory
    ***WorkSpace*/Build/DuetPkg/DEBUG\_\$(*TOOL_CHAIN_TAG*)/X64**

#### Build IA32 UEFI Application

1. Since this is the default as per the target.txt Update the
    Nt32Pkg/Nt32Pkg.dsc file.
    1. Edit the Nt32Pkg/Nt32Pkg.dsc and add your new application to the
        the <span style="font-family: Courier"> \[Components\] </span>
        section and before the <span style="font-family: Courier">
        \[BuildOptions\] </span> section. (e.g.
        <span style="font-family: Courier">
        MyHelloWorld/MyHelloWorld.inf </span>)
2. Invoke the Build
    1. At the command prompt \>
        <span style="font-family: Courier">**Build** </span>
3. Final Output .efi file will be in the directory
    ***WorkSpace*/Build/NT32/DEBUG\_\$(*TOOL_CHAIN_TAG*)/IA32**
4. Test with Windows NT 32 emulation: command prompt \>
    <span style="font-family: Courier">**Build Run** </span>

<a href="Getting_Started" class="wikilink"
title="Getting Started">Getting Started</a>
