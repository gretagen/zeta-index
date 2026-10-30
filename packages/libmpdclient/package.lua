return {
  name    = "libmpdclient",
  version = "2.27-1-x86_64",
  summary = "c library to implement a MPD client",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmpdclient/libmpdclient-2.27-1-x86_64.pkg.tar.zst",
  sha256  = "ea65d96eb7efb1a2016d62e2dafc789d1fee6c11aec501aa449e141fb46bb401",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmpdclient.so.2.27")
  end,
}
