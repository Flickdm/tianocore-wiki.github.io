# ShellPkg (UEFI Shell 2.x)

**[ShellPkg](https://github.com/tianocore/edk2/tree/master/ShellPkg)**
is an
<a href="EDKII_Packages" class="wikilink" title="EDK II Package">EDK II
Package</a> that provides a native implementation of the UEFI Shell 2.x
specifications.

[1](https://github.com/tianocore/edk2/tree/master/ShellPkg)

## Getting ShellPkg

This package provides the shell application, a set of NULL-named
libraries that provide configurable command sets, and libraries for
creating additional applications and UEFI Shell commands.

## ShellPkg versus ShellBinPkg

**ShellPkg** provides source code for the UEFI Shell and related
applications. **ShellBinPkg** provides a pre-built version of the UEFI
Shell and applications. Refer to the [ShellBinPkg
ReadMe](https://github.com/tianocore/edk2/blob/master/ShellBinPkg/ReadMe.txt)
for more info.

## UEFI Shell 2.x Engineering Resources

- <a href="Shell_Execution_Requirements" class="wikilink"
  title="Shell Execution Requirements">Shell Execution Requirements</a>
- <a href="Shell_Library_Primer" class="wikilink"
  title="Shell Library Primer">Shell Library Primer</a>
- <a href="Creating_a_Shell_Application" class="wikilink"
  title="Creating a Shell Application">Creating a Shell Application</a>
- <a href="Porting_an_EDK_Shell_Extension" class="wikilink"
  title="Porting an EDK Shell Extension">Porting an EDK Shell
  Extension</a>
- <a href="Shell_Application_to_internal_command" class="wikilink"
  title="Move a Shell Application to internal command">Move a Shell
  Application to internal command</a>
- <a href="Shell_FAQ" class="wikilink" title="Shell FAQ">Shell FAQ</a>

## UEFI Shell Specifications (uefi.org)

[2](http://www.uefi.org/sites/default/files/resources/UEFI_Shell_2_2.pdf)

[3](http://www.uefi.org/sites/default/files/resources/UEFI_Shell_Spec_2_1_July02release.pdf)

[4](http://www.uefi.org/sites/default/files/resources/UEFI_Shell_Spec_2_0_Errata_A.pdf)

[5](http://www.uefi.org/sites/default/files/resources/UEFI_Shell_Spec_2_0.pdf)

## ShellPkg versus EdkShellPkg

The **<a href="EdkShellPkg" class="wikilink"
title="EdkShellPkg">EdkShellPkg</a>** implements an older version of the
EFI Shell, prior to standardization by the UEFI Forum. Please treat
*EdkShellPkg**and**EdkShellBinPkg*' as end-of-life code.

[6](https://github.com/tianocore/edk2/tree/master/EdkShellPkg)

[7](https://github.com/tianocore/edk2/tree/master/EdkShellBinPkg)
