return {
  name    = "oniguruma",
  version = "6.9.10",
  summary = "Regular expressions library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/oniguruma/oniguruma-6.9.10-1-x86_64.pkg.tar.zst",
  sha256  = "25b7266753b04ed80dd771b7499d2750ad859a90fa87b37b891687891c108efe",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
