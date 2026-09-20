return {
  name    = "popt",
  version = "1.19",
  summary = "A commandline option parser",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/popt/popt.pkg.tar.zst",
  sha256  = "877635962b604efa79409c3d423f4fdffc4868776af3e0e804cc94a0b57ca151",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
