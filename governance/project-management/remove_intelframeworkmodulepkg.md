# Remove IntelFrameworkModulePkg

Below is the directory tree of IntelFrameworkModulePkg.
The link after the directory name is the GitHub issue link tracking the removal of it.

IntelFrameworkModulePkg
 +---Bus
 |   +---Isa                [7625](https://github.com/tianocore/edk2/issues/7625)
 |   \---Pci
 |       +---IdeBusDxe      [7639](https://github.com/tianocore/edk2/issues/7639)
 |       \---VgaMiniPortDxe [7626](https://github.com/tianocore/edk2/issues/7626)
 +---Csm
 |   +---BiosThunk
 |   |   +---BlockIoDxe
 |   |   +---KeyboardDxe
 |   |   +---Snp16Dxe
 |   |   \---VideoDxe
 |   \---LegacyBiosDxe
 +---Include
 |   +---Guid
 |   +---Library
 |   \---Protocol
 +---Library
 |   +---BaseUefiTianoCustomDecompressLib ->Liming, propose drop
 |   +---DxeCapsuleLib                             [7642](https://github.com/tianocore/edk2/issues/7642)
 |   +---DxeReportStatusCodeLibFramework           [7628](https://github.com/tianocore/edk2/issues/7628)
 |   +---GenericBdsLib                             [7624](https://github.com/tianocore/edk2/issues/7624)
 |   +---LegacyBootMaintUiLib
 |   +---LegacyBootManagerLib
 |   +---LzmaCustomDecompressLib                   [7640](https://github.com/tianocore/edk2/issues/7640)
 |   +---PeiDxeDebugLibReportStatusCode            [7628](https://github.com/tianocore/edk2/issues/7628)
 |   +---PeiRecoveryLib                            [7610](https://github.com/tianocore/edk2/issues/7610)
 |   +---PeiS3Lib                                  [7610](https://github.com/tianocore/edk2/issues/7610)
 |   +---PlatformBdsLibNull                        [7624](https://github.com/tianocore/edk2/issues/7624)
 |   \---SmmRuntimeDxeReportStatusCodeLibFramework [7628](https://github.com/tianocore/edk2/issues/7628)
 \---Universal
     +---Acpi
     |   +---AcpiS3SaveDxe                         [7652](https://github.com/tianocore/edk2/issues/7652)
     |   \---AcpiSupportDxe                        [7648](https://github.com/tianocore/edk2/issues/7648)
     +---BdsDxe                                    [7624](https://github.com/tianocore/edk2/issues/7624)
     +---Console\VgaClassDxe                       [7626](https://github.com/tianocore/edk2/issues/7626)
     +---CpuIoDxe                                  [7644](https://github.com/tianocore/edk2/issues/7644)
     +---DataHubDxe                                [7628](https://github.com/tianocore/edk2/issues/7628)
     +---DataHubStdErrDxe                          [7628](https://github.com/tianocore/edk2/issues/7628)
     +---FirmwareVolume
     |   +---FwVolDxe                              [7647](https://github.com/tianocore/edk2/issues/7647)
     |   \---UpdateDriverDxe                       [7646](https://github.com/tianocore/edk2/issues/7646)
     +---LegacyRegionDxe                           [7645](https://github.com/tianocore/edk2/issues/7645)
     +---SectionExtractionDxe                      [7647](https://github.com/tianocore/edk2/issues/7647)
     \---StatusCode                                [7628](https://github.com/tianocore/edk2/issues/7628)
         +---DatahubStatusCodeHandlerDxe
         +---Pei
        \---RuntimeDxe
