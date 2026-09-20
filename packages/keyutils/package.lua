return {
  name    = "keyutils",
  version = "1.6.3",
  summary = "Linux Key Management Utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/keyutils/keyutils.pkg.tar.zst",
  sha256  = "e3e5d4226bb7d213a6baddb997bf679a2b1106d95b5c2845b79bf8df1c3ef5fe",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
