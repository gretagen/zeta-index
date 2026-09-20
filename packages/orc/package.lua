return {
  name    = "orc",
  version = "0.4.44",
  summary = "Optimized Inner Loop Runtime Compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/orc/orc.pkg.tar.zst",
  sha256  = "87bf68a92af1281feacdccd04f9e3a8494e1da19adc76f2fd3b7080c316f8db5",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
