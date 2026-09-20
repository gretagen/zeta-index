return {
  name    = "lib32-gcc-libs",
  version = "16.2.1+r23+gd564253eb6c8",
  summary = "32-bit runtime libraries shipped by GCC",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-gcc-libs/lib32-gcc-libs.pkg.tar.zst",
  sha256  = "21fde8d5c5fda174b0277515fb6e49a450763a9c8a05f1956f719779e459465a",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
