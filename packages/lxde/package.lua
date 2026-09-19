return {
  name    = "lxde",
  version = "0.2.0",
  summary = "LXDE desktop environment (meta-package)",
  deps    = {
    "openbox", "pcmanfm", "lxpanel", "lxsession", "lxappearance",
    "lxmenu-data", "libfm", "libfm-gtk3", "libfm-extra", "libwnck3",
    "lxde-common", "lxtask", "lxinput", "lxhotkey",
    "libkeybinder3", "menu-cache",
    "curl", "gtk3", "polkit",
  },
  install = function(p)
    p:run("mkdir -p " .. p.install_root .. "/usr/share/xsessions")
    p:run("cat > " .. p.install_root .. "/usr/share/xsessions/lxde.desktop <<'EOF'\n[Desktop Entry]\nName=LXDE\nComment=Lightweight X11 Desktop Environment\nExec=startlxde\nType=Application\nDesktopNames=LXDE\nEOF")
  end,
  test = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/xsessions")
  end,
}
