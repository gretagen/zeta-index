return {
  name    = "libxpm",
  version = "3.5.20-1-x86_64",
  summary = "X PixMap image library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libxpm/libxpm-3.5.20-1-x86_64.pkg.tar.zst",
  sha256  = "cf538c4400abd6bdba8942bfdddb0c01716528e75bd95279b4b0a842fa035052",
  deps    = { "glibc", "libX11", "libXext", "libXt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libXpm.so.4")
  end,
}
