return {
  name    = "libdv",
  version = "1.0.0-12-x86_64",
  summary = "decoder library for DV video",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libdv/libdv-1.0.0-12-x86_64.pkg.tar.zst",
  sha256  = "7815939869bf655f5d36557e4fb1a60db93b6d3d3ad047951bd0bb88cd0cb376",
  deps    = { "glibc", "popt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdv.so.4.0.3")
  end,
}
