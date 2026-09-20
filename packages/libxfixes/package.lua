return {
  name    = "libxfixes",
  version = "6.0.2",
  summary = "X11 miscellaneous 'fixes' extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxfixes/libxfixes.pkg.tar.zst",
  sha256  = "d58ab2dbf326e36cf84792fe0dc12c34239ea04ac34159006a566103203db272",
  deps    = { "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
