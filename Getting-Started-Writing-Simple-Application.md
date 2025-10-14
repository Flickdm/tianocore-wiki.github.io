# Getting Started Writing Simple Application

## How to Write a Simple EDK II UEFI Application

### 1) Create a Work Space Directory

e.g. <span style="font-family: Courier">mkdir edk2</span>

### 2) Download the Edk II source and build tools

1. Latest EDK II source from following Instructions on
    [ Step by step instructions](Getting-Started-with-EDK-II)
    1. i.e. example \>git clone [https://github.com/tianocore/edk2.git](https://github.com/tianocore/edk2.git)

OR

1. Download the latest .zip
    [UDK2017](UDK2017)
    Download release (or Latest
    [UDK](UDK) release).

### 3) Run the **edksetup**

Run ***edksetup --nt32**'' script from the command line prompt at the Work Space directory

1. Windows Comand Prompt:
    <span style="font-family: Courier">**C:\edk2\> edksetup --nt32**</span>
2. Linux like: <span style="font-family: Courier">**bash\$ .edksetup.sh BaseTools**</span>

### 4) Edit the file conf/target.txt

Modify **TARGET_ARCH** and **TOOL_CHAIN_TAG** as required.

1. TOOL_CHAIN_TAG see:
    1. Windows
    [Windows systems ToolChain
    Matrix](Windows-systems-ToolChain-Matrix.md)
    2. Newer versions of
    Linux[Using EDK II with Native GCC](Using-EDK-II-with-Native-GCC.md)
    3. Older Linux distributions
    [Unix-like systems](Unix-like-systems.md)
    4. Mac OS X
        [Xcode](Xcode)
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
    [ MyHelloWorld.c](Getting_Started_Writing_MyHelloWorld.c))
3. Create a .inf file in the project directory (see examle:
    [ MyHelloWorld.inf](Getting-Started-Writing-MyHelloWorld.inf))

### 6) Build your UEFI Application

## Build X64 UEFI Application

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

## Build IA32 UEFI Application

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

[Getting Started](Getting_Started)
