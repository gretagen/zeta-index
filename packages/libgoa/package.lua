return {
  name    = "libgoa",
  version = "3.58.1-1-x86_64",
  summary = "GNOME Online Accounts library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgoa/libgoa-3.58.1-1-x86_64.pkg.tar.zst",
  sha256  = "70cc98374c1bf4c54e384895b5dc62696af2735b25440f2adfcc3156e757204f",
  deps    = { "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgoa-1.0.so")
  end,
}
