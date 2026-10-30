return {
  name    = "aml",
  version = "1.0.0-1-x86_64",
  summary = "another Main Loop",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/aml/aml-1.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "d3a87fac8acf0b557f408a6911cabc2385b54275f7b81049fc0227e4af8a13cb",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libaml.so.1.0.0")
  end,
}
