return {
  name    = "cairomm-1.16",
  version = "1.18.1-1-x86_64",
  summary = "c++ bindings for Cairo",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cairomm-1.16/cairomm-1.16-1.18.1-1-x86_64.pkg.tar.zst",
  sha256  = "7323551c8e2d9d689333a5f1c758bac3c2d549d7262cce92309dfd83faf85468",
  deps    = { "cairo", "glibc", "libgcc", "libsigc++-3.0", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcairomm-1.16.so.1.4.0")
  end,
}
