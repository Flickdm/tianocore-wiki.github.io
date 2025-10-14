We will take the ARM Versatile Express TC2 (big.LITTLE test chip) as an
example in this page.

1\. Build UEFI in Release build & Copy the binary to the board. See the
instructions in this [wiki
page](https://sourceforge.net/apps/mediawiki/tianocore/index.php?title=ArmPlatformPkg/ArmVExpressPkg#Starting_UEFI_from_ARM_Boot_Monitor_on_VExpress_Core_Tile_A15x2-A7x3)

2\. Identify the start and end point of your trace. Example on TC2, we
want to measure from the start of UEFI at 0xB0000000 - defined into
ArmVExpress-CTA15-A7.fdf

    [FD.ARM_VEXPRESS_CTA15A7_EFI]
    BaseAddress   = 0xB0000000|gArmTokenSpaceGuid.PcdFdBaseAddress  # The base address of the Firmware in remapped DRAM.
    Size          = 0x000B0000|gArmTokenSpaceGuid.PcdFdSize         # The size in bytes of the FLASH Device

... until the start of Linux.
To identfy where we will start Linux we need to load the symbol of the
BDS.
So start UEFI a first time on the target up to the Boot menu.

Load all the symbols with DS-5 (symbols for Pre-EFI and UEFI phases):

    source "/home/olivier/tianocore/ArmPlatformPkg/Scripts/Ds5/cmd_load_symbols.py" -f (0xB0000000,0x000B0000) -m (0x80000000,0x40000000) -v -a

Save the output into a file and replace the entry line to make DS-5
command line. Example:

From:

    Add symbols of /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/ArmPlatformPkg/PrePi/PeiMPCore/DEBUG/ArmPlatformPrePiMPCore.dll at 0xb0000180
    Add symbols of /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/MdeModulePkg/Core/Dxe/DxeMain/DEBUG/DxeCore.dll at 0xbfd62240
    Add symbols of /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/ArmPkg/Drivers/CpuDxe/CpuDxe/DEBUG/ArmCpuDxe.dll at 0xbfd14240
    (...)

To:

    add-symbol-file /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/ArmPlatformPkg/PrePi/PeiMPCore/DEBUG/ArmPlatformPrePiMPCore.dll 0xb0000180
    add-symbol-file /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/MdeModulePkg/Core/Dxe/DxeMain/DEBUG/DxeCore.dll 0xbfd62240
    add-symbol-file /home/olivier/tianocore/Build/ArmVExpress-CTA15-A7/RELEASE_GCC48/ARM/ArmPkg/Drivers/CpuDxe/CpuDxe/DEBUG/ArmCpuDxe.dll 0xbfd14240
    (...)

Save the file into symbols.ds

Go to the assembly view of 'StartLinux'. Find where we start Linux and
set a hardware breakpoint at this location.
![](uefi-profile1.png "uefi-profile1.png")

Set a hardware breakpoint at the start of UEFI:

    hbreak -p *S:0xB0000000

4\. After disconnecting the debugger, restart the ARM Versatile Express.

5\. Setting up DS-5 for DSTREAM trace with UEFI
This tutorial assumes you have already set up DS-5 for hardware
debugging UEFI. If you haven't, help can be found
[here](https://sourceforge.net/apps/mediawiki/tianocore/index.php?title=ArmPkg/Ds5).

Ensure that your DSTREAM's debug probe is connected via a Mictor-38 to
the target's trace port. This is in addition to the JTAG connection.

6\. Open the Debug Configurations menu and from there open the DTSL
Options window: ![](uefi-profile2.png "uefi-profile2.png") In the Trace
Capture tab, select "DSTREAM 4GB Trace Buffer". The other settings are
optional. ![](uefi-profile3.png "uefi-profile3.png")

In the Core Trace tab, select "Enable core trace", "Enable core trace",
for each core you want to trace, and optionally "Cycle accurate trace".
![](uefi-profile4.png "uefi-profile4.png")

On TC2, you should now be in the ARM Boot Monitor Menu.
![](uefi-profile5.png "uefi-profile5.png")

7\. Connect the debugger.

8\. Enable your two hardware breakpoints (the start and stop of your
trace).

9\. Load all the symbols (ie: 'source symbols.ds'). Symbols must be
loaded before starting the acquisition.

10\. Resume the execution. Start UEFI by typing:

    flash run uefi

Program execution should stop at address 0xB0000000.

11\. Clear the trace and resume the execution.

UEFI will now boot. As soon as you enter into the Boot Menu press the
boot entry (another alternative would be to automatically start Linux by
setting PcdTimeout... to 0). Program execution should stop again when
reaching the breakpoint you added in stop address.
![](uefi-profile6.png "uefi-profile6.png")

### Results

After some post-processing here are the list of the 20 functions that
consume the more cycles on the UEFI Firmware of the ARM Versatile
Express TC2.

| Module Name / Function Name | Cycle | Percentage | Count |
|----|----|----|----|
| ArmPlatformPrePiMPCore.dll/LzmaDec_DecodeReal | 1538397019 | 33% | 9 |
| ArmCpuDxe.dll/ArmCleanInvalidateDataCacheEntryBySetWay | 1210112914 | 26% | 18487296 |
| ArmPlatformBds.dll/InternalMemCopyMem | 557552792 | 12% | 99 |
| DxeCore.dll/InternalMemCopyMem | 372182434 | 8% | 26152 |
| ArmPlatformPrePiMPCore.dll/InternalMemCopyMem | 158259634 | 3% | 65 |
| ArmCpuDxe.dll/ArmV7AllDataCachesOperation | 156004379 | 3% | 18489420 |
| VariableRuntimeDxe.dll/\_\_aeabi_uread4 | 67701311 | 1% | 68442 |
| SerialDxe.dll/MmioRead32 | 49657481 | 1% | 167543 |
| DxeCore.dll/InternalMemCompareMem | 48489155 | 1% | 70456 |
| HdLcdGraphicsDxe.dll/MmioRead32 | 28337835 | 0% | 95824 |
| DxeCore.dll/FwVolBlockReadBlock | 27751950 | 0% | 45740 |
| HiiDatabase.dll/InternalMemCopyMem | 21179285 | 0% | 8105 |
| ArmVeNorFlashDxe.dll/InternalMemCopyMem | 14168462 | 0% | 281 |
| DxeCore.dll/FvCheck | 12961574 | 0% | 23193 |
| DxeCore.dll/ReadUnaligned16 | 12397148 | 0% | 27832 |
| ArmCpuDxe.dll/UpdatePageEntries | 11785691 | 0% | 20544 |
| DxeCore.dll/ProduceFVBProtocolOnBuffer | 11522208 | 0% | 14 |
| HiiDatabase.dll/\_\_aeabi_memcpy | 9341275 | 0% | 20710 |
| DxeCore.dll/CoreSetInterruptState | 8332436 | 0% | 32373 |
| ArmPlatformPrePiMPCore.dll/MmioRead32 | 8261530 | 0% | 27246 |

| Function Name                            | Cycle      | Percentage | COunt    |
|------------------------------------------|------------|------------|----------|
| LzmaDec_DecodeReal                       | 1538397019 | 33%        | 9        |
| ArmCleanInvalidateDataCacheEntryBySetWay | 1215995571 | 26%        | 18504704 |
| InternalMemCopyMem                       | 1133754058 | 24%        | 36242    |
| ArmV7AllDataCachesOperation              | 160028408  | 3%         | 18515535 |
| MmioRead32                               | 86717719   | 1%         | 292770   |
| \_\_aeabi_uread4                         | 67707303   | 1%         | 68453    |
| InternalMemCompareMem                    | 52567407   | 1%         | 76317    |
| FwVolBlockReadBlock                      | 27751950   | 0%         | 45740    |
| ReadUnaligned16                          | 13271790   | 0%         | 29780    |
| FvCheck                                  | 12961574   | 0%         | 23193    |
| UpdatePageEntries                        | 11785691   | 0%         | 20544    |
| ProduceFVBProtocolOnBuffer               | 11522208   | 0%         | 14       |
| \_\_aeabi_memcpy                         | 9399629    | 0%         | 20814    |
| CoreSetInterruptState                    | 8332436    | 0%         | 32373    |
| VariableWriteServiceInitialize           | 7058548    | 0%         | 64019    |
| CompareGuid                              | 6685126    | 0%         | 141296   |
| IsErasedFlashBuffer                      | 6550933    | 0%         | 1        |
| InternalMemSetMem32                      | 6450910    | 0%         | 1800     |
| CoreRestoreTpl                           | 6072718    | 0%         | 15192    |
| NarrowGlyphToBlt                         | 5892173    | 0%         | 20809    |

This is based on SVN rev15539 (2014-05-19).
