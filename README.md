# CoreELEC-3DFix

- Fixed some 3D ISOs show only the video upper half on both views
- ~~Fixed subtiles/OSD are only shown on the left side~~ Fixed upstream
- ~~Fixed HSBS/HTB videos have wrong aspect ratio~~ Fixed upstream
- ~~Fixed 3D modeswitch not applying immediately when the current 3D output is changed in the Display settings~~ Fixed upstream
- Fixed automatic 3D modeswitch not working reliably, needed on my AM6B+ and my NVidia Shield but cannot reproduced by CE maintainer
- Fixed 3D Blu-Ray disks only play in 2D
- Fixed PGS subtitles have no depth, first OSS solution with correct dynamic MVC subtitles depth
- ~~Fixed a demuxer bug which prevented many 3D ISOs from proper playback. Some didn't play at all, many had decoding artifacts like macroblocks, stalled video or dropouts.
  Every ISO which played faulty or not at all previously plays fine now.~~ Fixed upstream

Open issues which may likely never get fixed:
- 3D Blu-Ray menus don't work, but file mode from simple menu works really well with all tested media.
- 3D mode conversion (e.g. TAB to framepacked mode or vice versa) doesn't work. Just set "Preferred mode to "Same as movie" in the Display settings.
- The infamous Amlogic decoder macroblocks issue is still present. But at least in my case it only occurs wih the Titanic 3D BD so far and only a very few short times.

CoreELEC is a 'Just enough OS' Linux distribution for running the award-winning [Kodi](https://kodi.tv) software on popular low-cost hardware. CoreELEC is a minor fork of [LibreELEC](https://libreelec.tv), it's built by the community for the community. [CoreELEC website](http://coreelec.org).

**Documentation**

- [CONTRIBUTING.md](CONTRIBUTING.md) — how to report issues and submit pull requests
- [STANDARDS.md](STANDARDS.md) — coding standards for build scripts and package files
- [packages/README.md](packages/README.md) — detailed guide to `package.mk` structure and variables

**Issues & Support**

Please report issues via the CoreELEC [Forum](https://discourse.coreelec.org).

**Donations**

At this moment we do not accept Donations. We are doing this for fun not for profit.

**License**

CoreELEC original code is released under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html).

**Copyright**

As CoreELEC includes code from many upstream projects it includes many copyright owners. CoreELEC makes NO claim of copyright on any upstream code. Patches to upstream code have the same license as the upstream project, unless specified otherwise. For a complete copyright list please checkout the source code to examine license headers. Unless expressly stated otherwise all code submitted to the CoreELEC project (in any form) is licensed under [GPLv2](https://www.gnu.org/licenses/gpl-2.0.html). You are absolutely free to retain copyright. To retain copyright simply add a copyright header to each submitted code page. If you submit code that is not your own work it is your responsibility to place a header stating the copyright.
