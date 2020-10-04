Ant Man's DWM
============================

![demo.png](https://raw.githubusercontent.com/antman666/dwm/master/demo.png)

一些我自己使用的脚本会在[scripts](https://github.com/antman666/scripts)([国内地址](https://gitee.com/antman666/scripts))
一些我自己使用的壁纸会在[wallpaper](https://github.com/antman666/wallpaper)([国内地址](https://gitee.com/antman666/wallpaper))

依赖
------------
安装dwm你需要Xlib等一些头文件(xorg)


安装
------------
编辑`config.mk`等文件来完成一些本地化配置 (dwm会默认安装到/usr/local).

之后运行以下命令来安装编辑过的dwm到机器上(需要root权限):

	make install clean

用到的一些插件
---------------
- [dwm-alpha-20180613-b69c870.diff](https://dwm.suckless.org/patches/alpha/)
- [dwm-autostart-20200610-cb3f58a.diff](https://dwm.suckless.org/patches/autostart/)
- [dwm-awesomebar-20191003-80e2a76.diff](http://dwm.suckless.org/patches/awesomebar/)
- [dwm-fullscreen-6.2.diff](https://dwm.suckless.org/patches/fullscreen/)
- [dwm-hide-and-restore.diff](https://github.com/antman666/dwm/tree/master/patches/) (此插件为大佬[theniceboy](https://github.com/theniceboy/)所做)
- [dwm-hide_vacant_tags-6.2.diff](https://dwm.suckless.org/patches/hide_vacant_tags/)
- [dwm-noborder-6.2.diff](https://dwm.suckless.org/patches/noborder/)
- [dwm-r1522-viewontag.diff](https://dwm.suckless.org/patches/viewontag/)
- [dwm-rotatestack-20161021-ab9571b.diff](https://dwm.suckless.org/patches/rotatestack/)

运行dwm
-----------
将以下内容添加到`.xinitrc`，之后你就可以用`startx`来启动你的dwm:

	exec dwm

