return {
  name    = "qtile",
  version = "0.37.1-1-x86_64",
  summary = "a full-featured, pure-Python tiling window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/qtile/qtile-0.37.1-1-x86_64.pkg.tar.zst",
  sha256  = "829766b431cf6bf030027ec0c0a305a58835d1d57786cbc03c114884c40a0d8d",
  deps    = { "cairo", "gdk-pixbuf", "glibc", "libinput", "libnotify", "librsvg", "pango", "python", "python-cairocffi", "python-cffi", "python-gobject", "python-xcffib", "wayland", "wlroots" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/qtile")
  end,
}
