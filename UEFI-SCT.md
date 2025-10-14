# UEFI SCT

<a href="UEFI" class="wikilink" title="UEFI">UEFI</a> \|
<a href="PI" class="wikilink" title="PI">PI</a> \|
<a href="Testing_EDK_II" class="wikilink" title="Testing EDK II">Testing
EDK II</a>

# UEFI Self-Certification Tests (SCT)

## UEFI SCT

The <a href="UEFI" class="wikilink" title="UEFI">UEFI</a>
Self-Certification Test (UEFI SCT) is a toolset for platform developers
to validate firmware implementation compliance to the UEFI
Specification. The toolset features a Test Harness for executing
built-in UEFI Compliance Tests, as well as for integrating user-defined
tests that were developed using the UEFI SCT open source code.

The latest version of the UEFI SCT can be found at
<http://uefi.org/testtools>

## FWTS

The UEFI Board of Directors recommends the open source Firmware Test
Suite (FWTS) for <a href="ACPI" class="wikilink" title="ACPI">ACPI</a>
validation.

<https://wiki.ubuntu.com/FirmwareTestSuite>

<https://wiki.ubuntu.com/FirmwareTestSuite/FirmwareTestSuiteLive>

## UEFI PI SCT

The <a href="UEFI_PI" class="wikilink" title="PI">PI</a> SCT is used to
perform self-certification testing on the PEI code.

The latest Version of the PI SCT can be downloaded from: [PI1.2 SCT.2
Release.zip](https://sourceforge.net/projects/pi-sct/files/PI1.2_Sct_.2_Release_Mar_05_2013/PI1.2-SCT.2Release-Mar052013.zip/download)

PI 1.2 introduces <a href="SMM" class="wikilink" title="SMM">SMM</a> not
supported by EDK. PI SCT test cases for PI 1.2 must be built using
<a href="EDK_II" class="wikilink" title="EDK II">EDK II</a>. SCT
packages for PI 1.2+ must use EDK II coding style, as EDK will not be
supported from this point forward.

## Reference Documents

[UEFI SCT Case Writers Guide 91.
pdf](https://sourceforge.net/projects/edk2/files/General%20Documentation/UEFI%20SCT%20Case%20Writers%20Guide_0_91.pdf/download)
