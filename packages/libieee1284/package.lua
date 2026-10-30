return {
  name    = "libieee1284",
  version = "0.2.11-19-x86_64",
  summary = "a library to query devices connected in parallel port",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libieee1284/libieee1284-0.2.11-19-x86_64.pkg.tar.zst",
  sha256  = "4c46948c26550039d2d550399a6b1750a6fdede319f4c0cc9897bad6f11956ec",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libieee1284.so.3.2.2")
  end,
}
