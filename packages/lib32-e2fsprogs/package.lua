return {
  name    = "lib32-e2fsprogs",
  version = "1.47.4",
  summary = "Ext2/3/4 filesystem libraries (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-e2fsprogs/lib32-e2fsprogs.pkg.tar.zst",
  sha256  = "58dc4c8591dc59c83e4a3def23da6f235d0a6f37b2241753bced3b9c2cf6824b",
  deps    = { "e2fsprogs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
