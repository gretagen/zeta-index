return {
  name    = "lib32-libpsl",
  version = "0.21.5",
  summary = "Public Suffix List library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libpsl/lib32-libpsl.pkg.tar.zst",
  sha256  = "5b243a0224eb502a13d367e75174adeab6a9c91fdcd7e0f692d63c7ffdb68707",
  deps    = { "libpsl", "lib32-glibc", "lib32-libidn2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
