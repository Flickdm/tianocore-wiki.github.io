# EDK2 git

Note: If you are simply looking for an
<a href="Source_Control" class="wikilink"
title="EDK II git repository">EDK II git repository</a>, then visit the
<a href="Source_Control" class="wikilink" title="Source Control">Source
Control</a> page.

The [EDK II](http://www.tianocore.org/edk2/) project uses the subversion
source control system. But, as [git](http://git-scm.org) is a source
control system often used by open-source projects these days, the
question of whether git can be used with EDK II occasionally comes up.
This page will attempt to document how contributors can use git with EDK
II, as well as other EDK II git information.

## Contributors without svn commit access

EDK II uses <a href="EDKII_Packages" class="wikilink"
title="package maintainers">package maintainers</a> to own reviewing and
committing contributions for a package. This means that most
contributors don't really need to interface with svn if they prefer to
use git.

In this scenario, the contributor can clone from one of the EDK II
<a href="Source_Control" class="wikilink" title="git mirrors">git
mirrors</a>. They can then:

1. Make their changes in git as usual
2. Use git format-patch / send-email as normal to publish the changes
    to
    <a href="edk2-devel" class="wikilink" title="edk2-devel">edk2-devel</a>

Of course, when the package maintainer commits your change, your
authorship of the commit will be lost, as svn does not maintain separate
author/committer metadata.

## Helping convince EDK II to convert to git

If you would prefer for EDK II to use git, then one of the most helpful
things you can do is mention it on
<a href="edk2-devel" class="wikilink" title="edk2-devel">edk2-devel</a>.
Silence will generally favor and the Status quo / staying on svn.

Other than this, your best bet is to use the
<a href="Source_Control" class="wikilink" title="git mirrors">git
mirrors</a> of svn to make it clear that this is how you prefer to work.

Use of git send-email, pushing your tree to a publicly accessible
location and mentioning that your changes are available in a branch,
will help raise awareness of the usefulness of git as well.

## Discussions of converting to git

Git is mentioned occasionally on
<a href="edk2-devel" class="wikilink" title="edk2-devel">edk2-devel</a>.

In February 2013 there was such a
[discussion](https://sourceforge.net/mailarchive/message.php?msg_id=30431526),
and in general people expressed a desire to use git for EDK II. Here is
some of the information from that email thread:

- David & Jordan from Intel would prefer git
- Andrew from Apple uses git-svn, and wouldn't mind if the project move
  to git
- Cameron from Apple does **not** want to use git
- ARM uses git
- Linaro uses git
  - Maintains their own git-svn
    [repository](http://git.linaro.org/gitweb?p=mirror/edk2/edk2.git;a=summary)
- Brian from SGI mentioned they would prefer git
- Laszlo from Red Hat uses git
- Several EDK II Google Summer of Code projects used git

## See Also

- <a href="EDK_II_git-svn" class="wikilink" title="EDK II git-svn">EDK II
  git-svn</a> (For
  <a href="EDKII_Packages" class="wikilink" title="package owners">package
  owners</a> / svn committers)
