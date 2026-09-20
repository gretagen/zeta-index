return {
  name    = "lib32-libxinerama",
  version = "1.1.6",
  summary = "X11 Xinerama extension library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxinerama/lib32-libxinerama.pkg.tar.zst",
  sha256  = "6cc85b950852419929994e7832f36cd4fa900023b9fa6127ae945bfa74f60c1a",
  deps    = { "lib32-libxext", "libXinerama", "lib32-libx11", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
