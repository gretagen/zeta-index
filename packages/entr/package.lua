return {
  name    = "entr",
  version = "5.9-1-x86_64",
  summary = "Run commands when files change (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/entr/entr-5.9-1-x86_64.pkg.tar.zst",
  sha256  = "eae77394cff13a930c6ad0e16b0522f9a7f0392eec60a51e1d9575772aeda7ef",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/entr")
  end,
}
