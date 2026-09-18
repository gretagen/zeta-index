return {
  name    = "xorg-full",
  version = "21.1.24",
  summary = "Complete X.Org stack (meta-package): X server, X11/XCB libs, GL, input, fonts, utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xorg-full/xorg-full-21.1.24.tar.gz",
  sha256  = "6885ab1cc2f5b541853451a2f9c20ed44e74eb95f5e739ecb6b55285a7269830",
  deps    = { "xorg-server", "xf86-input-libinput", "xinit", "xorgproto", "xcb-proto", "xtrans", "libX11", "libXau", "libXaw", "libXcomposite", "libXcursor", "libXdamage", "libXdmcp", "libXext", "libXfixes", "libXfont2", "libXft", "libXi", "libXinerama", "libXkbfile", "libXmu", "libXpm", "libXpresent", "libXrandr", "libXrender", "libXres", "libXt", "libXtst", "libXxf86vm", "libICE", "libSM", "libxss", "libxshmfence", "libxcvt", "libfontenc", "libpciaccess", "libxcb", "xcb-util", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm", "libinput", "libevdev", "xkbcommon", "xkbcomp", "xkeyboard-config", "libxklavier", "mesa-drivers", "libglvnd", "libepoxy", "pixman", "libdrm", "fontconfig", "freetype", "xauth", "xdpyinfo", "xgamma", "xmessage", "xmodmap", "xprop", "xrandr", "xrdb", "xset", "setxkbmap", "xterm", "dejavusans" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
