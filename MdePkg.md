# MdePkg

The Module Development Environment Package (MdePkg) is a special package
as it is the minimum infrastructure required to build a module. A module
may require extra packages to be constructed but all modules are based
on the MdePkg. By keeping the MdePkg very stable, it effectively becomes
a module or device driver kit for building modules that can work with
various sets of packages.

The MdePkg provides all definitions(including functions, MACROs,
structures and library classes) and libraries instances, which are
defined in the MdePkg. The latest MdePkg .chm files will document these
definitions and can be found in the latest
<a href="UDK" class="wikilink" title="UDK">UDK</a> releases.

It also provides the definitions(including PPIs/PROTOCOLs/GUIDs) of
EFI1.10/UEFI2.x/PI1.x and other Industry Standards.

The MdePkg enables the construction of a range of module types. The
MdePkg can be used alone or in combination with other packages to
produce modules. The MdePkg can produce stand-alone modules defined as
base that only use resources defined in MdePkg that are of type base.
Base modules allow you to write portable C code that can be easily
ported to any environment. The MdePkg can be used to write SEC in C
code. The MdePkg package can also produce UEFI drivers or UEFI
applications that conform to either the EFI 1.10 or the UEFI 2.x
specifications. The MdePkg can also build UEFI drivers or applications
based on the <a href="EDK_II" class="wikilink" title="EDK II">EDK II</a>
build environment described in the
<a href="EDK_II_Specifications" class="wikilink"
title="EDK II Specifications">EDK II Specifications</a>.

The latest MdePkg .chm files will document all the details on the
definitions (including PPIs/PROTOCOLs/GUIDs and library classes) and
libraries instances associated with the MdePkg package. To download the
latest .chm files see <a href="UDK" class="wikilink" title="UDK">UDK</a>
for the current release.
