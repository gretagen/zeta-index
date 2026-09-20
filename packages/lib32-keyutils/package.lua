return {
  name    = "lib32-keyutils",
  version = "1.6.3",
  summary = "Linux Key Management Utilities (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-keyutils/lib32-keyutils.pkg.tar.zst",
  sha256  = "486dc55c72ef7579446d64d4debc2a4b465deae61d5ce4844c381964f87b737d",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
