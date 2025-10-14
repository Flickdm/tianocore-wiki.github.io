In April 2013, SourceForge began migrating projects to a different
hosting system. This upgrade process forces the subversion (svn) url to
change for our various projects.

In order to continue using subversion following this change, you will
need to use the 'svn switch' command to point your source tree at the
new location.

For example, if you have the EDK II tree checked out using the old url:

- <https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2>

You will need to switch to this url:

- <https://svn.code.sf.net/p/edk2/code/trunk/edk2>

In this case, in your edk-fat-driver tree, you would run this command:

    svn switch --relocate \
      https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2 \
      https://svn.code.sf.net/p/edk2/code/trunk/edk2

SourceForge has more documentation at [this
page](http://sourceforge.net/p/forge/community-docs/Repository%20Upgrade%20FAQ/).

<div class="t_projects">

| Projects with updated Subversion URL |  |  |
|----|----|----|
| Project | Old URL | New URL |
| [EDK II](http://www.tianocore.org/edk2/) | <https://edk2.svn.sourceforge.net/svnroot/edk2/trunk/edk2> | <https://svn.code.sf.net/p/edk2/code/trunk/edk2> |
| <a href="Edk2-buildtools" class="wikilink" title="EDK II Buildtools">EDK
II Buildtools</a> | <https://edk2-buildtools.svn.sourceforge.net/svnroot/edk2-buildtools> | <https://svn.code.sf.net/p/edk2-buildtools/code> |
| <a href="EDK" class="wikilink" title="EDK">EDK</a> | <https://efidevkit.svn.sourceforge.net/svnroot/efidevkit> | <https://svn.code.sf.net/p/efidevkit/code> |
| <a href="edk2-fat-driver" class="wikilink" title="EDK II Fat Driver">EDK
II Fat Driver</a> | <https://edk2-fatdriver2.svn.sourceforge.net/svnroot/edk2-fatdriver2> | <https://svn.code.sf.net/p/edk2-fatdriver2/code> |
| <a href="efi-shell" class="wikilink" title="EFI Shell">EFI Shell</a> | <https://efi-shell.svn.sourceforge.net/svnroot/efi-shell> | <https://svn.code.sf.net/p/efi-shell/code> |
| <a href="Edk-fat-driver" class="wikilink" title="EDK Fat Driver">EDK Fat
Driver</a> | <https://edk-fat-driver.svn.sourceforge.net/svnroot/edk-fat-driver> | <https://svn.code.sf.net/p/edk-fat-driver/code> |
| <a href="Edk-apps" class="wikilink" title="EDK Apps">EDK Apps</a> | <https://edk-apps.svn.sourceforge.net/svnroot/edk-apps> | <https://svn.code.sf.net/p/edk-apps/code> |
| EDK Contrib | <https://edkcontrib.svn.sourceforge.net/svnroot/edkcontrib> | <https://svn.code.sf.net/p/edkcontrib/code> |
| <a href="framework-sct" class="wikilink"
title="Framework-SCT">Framework-SCT</a> | <https://framework-sct.svn.sourceforge.net/svnroot/framework-sct> | <https://svn.code.sf.net/p/framework-sct/code> |
| <a href="network-io" class="wikilink" title="Network I/O">Network
I/O</a> | <https://network-io.svn.sourceforge.net/svnroot/network-io> | <https://svn.code.sf.net/p/network-io/code/> |
| <a href="efi-toolkit" class="wikilink" title="EFI Toolkit">EFI
Toolkit</a> | <https://efi-toolkit.svn.sourceforge.net/svnroot/efi-toolkit> | <https://svn.code.sf.net/p/efi-toolkit/code/> |
| <a href="EDK2Share" class="wikilink" title="EDK II Share">EDK II
Share</a> | <https://edk2share.svn.sourceforge.net/svnroot/edk2share> | <https://svn.code.sf.net/p/edk2share/code/> |
| <a href="gcc-shell" class="wikilink" title="GCC Shell">GCC Shell</a> | <https://gcc-shell.svn.sourceforge.net/svnroot/gcc-shell> | <https://svn.code.sf.net/p/gcc-shell/code/> |

</div>

## git-svn

If you are using git-svn, then these links may help with changing your
svn url:

- <https://git.wiki.kernel.org/index.php/GitSvnSwitch>
- <http://theadmin.org/articles/git-svn-switch-to-a-different-a-svn-url/>
