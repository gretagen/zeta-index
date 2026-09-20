return {
  name    = "libsodium",
  version = "1.0.22",
  summary = "Modern crypto library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libsodium/libsodium-1.0.22-1-x86_64.pkg.tar.zst",
  sha256  = "fc0440c108fff0341f3cb7b4ee38f5a9406b45d9315205ce999e1b147b52f972",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
