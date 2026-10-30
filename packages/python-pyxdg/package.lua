return {
  name    = "python-pyxdg",
  version = "0.28-8-any",
  summary = "python library to access freedesktop.org standards",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-pyxdg/python-pyxdg-0.28-8-any.pkg.tar.zst",
  sha256  = "06f5aa855cf6bdf5d20ede71fdfd279797282d5464c1bdd2143574d1a904ea13",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/pyxdg-0.28.dist-info/METADATA")
  end,
}
