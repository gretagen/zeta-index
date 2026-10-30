return {
  name    = "aalib",
  version = "1.4rc5-19-x86_64",
  summary = "aSCII art graphic library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/aalib/aalib-1.4rc5-19-x86_64.pkg.tar.zst",
  sha256  = "d1000be98fdbb30d96a1d77fd6cb2b666c2c6cca780c600cf12dfd42caf5f71d",
  deps    = { "glibc", "gpm", "libX11", "ncurses", "slang" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libaa.so.1.0.4")
  end,
}
