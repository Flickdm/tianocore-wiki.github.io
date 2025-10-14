# EmbeddedPkg Fdt

Device Tree (DT) is a format used to describe the hardware resources of
a specific platform. Lbfdt library (dual license - BSD/GPL) is often
used to read or modify the information of the FDT (Flat Device Tree).

The current version of EDK2 used libdft from Wednesday 16th January
2014.

    commit 65cc4d2748a2c2e6f27f1cf39e07a5dbabd80ebf
    Author: Jon Loeliger <jdl@jdl.com>
    Date:   Sat Jun 22 12:54:28 2013 -0500

        Tag Version 1.4.0

        Signed-off-by: Jon Loeliger <jdl@jdl.com>

- Here are the instructions to update the version of libfdt:

1\. Clone the dtc into a temporary directory:

    cd $(EDK2_ROOT)/EmbeddedPkg/Library
    git clone git://git.jdl.com/software/dtc.git

2\. Copy the content of 'libfdt' into EmbeddedPkg/Library/FdtLib/

    cd dtc
    cp -a libfdt/* ../FdtLib/

3\. Copy the libfdt headers:

    mv ../FdtLib/libfdt.h ../../Include/
    mv ../FdtLib/fdt.h ../../Include/
    rm ../FdtLib/libfdt_env.h

- To add libfdt support to your EDK2 firmware, add the following line to
  your platform DSC file (required by BdsLib):

    FdtLib|EmbeddedPkg/Library/FdtLib/FdtLib.inf
