return {
  name    = "lib32-xz",
  version = "5.8.4",
  summary = "Library and command line tools for XZ and LZMA compressed files (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-xz/lib32-xz.pkg.tar.zst",
  sha256  = "c29aea78d888f816f45c0876ae41ee29afb07f56f20e383fd66782849791760a",
  deps    = { "lib32-glibc", "xz", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
