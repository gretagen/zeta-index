return {
  name    = "lib32-libglvnd",
  version = "1.7.0",
  summary = "The GL Vendor-Neutral Dispatch library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libglvnd/lib32-libglvnd.pkg.tar.zst",
  sha256  = "37d25893487a797acd711c8f401a946f055a482a5666ccf4fb29230277cd184d",
  deps    = { "libglvnd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
