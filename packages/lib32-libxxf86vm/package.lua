return {
  name    = "lib32-libxxf86vm",
  version = "1.1.7",
  summary = "X11 XFree86 video mode extension library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxxf86vm/lib32-libxxf86vm.pkg.tar.zst",
  sha256  = "0f568950f143352cc7c930185f6acef1c43fd301e52adf345ac7c1e3349db8ad",
  deps    = { "lib32-libxext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
