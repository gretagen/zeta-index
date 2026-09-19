return {
  name    = "libsodium",
  version = "1.0.22",
  summary = "Modern, portable, easy-to-use crypto library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libsodium/libsodium-1.0.22-1-x86_64.pkg.tar.zst",
  sha256  = "fc0440c108fff0341f3cb7b4ee38f5a9406b45d9315205ce999e1b147b52f972",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsodium.so.26")
  end,
}
