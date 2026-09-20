return {
  name    = "lib32-libpciaccess",
  version = "0.19",
  summary = "X11 PCI access library (32-bit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libpciaccess/lib32-libpciaccess.pkg.tar.zst",
  sha256  = "96b2734f4487dd915b6e4741e74b530a69790f9d790ca3f846128366419e0847",
  deps    = { "lib32-glibc", "libpciaccess", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
