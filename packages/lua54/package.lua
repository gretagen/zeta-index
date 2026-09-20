return {
  name    = "lua54",
  version = "5.4.9",
  summary = "Powerful lightweight programming language designed for extending applications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lua54/lua54.pkg.tar.zst",
  sha256  = "ceda43657ee1d54eef282f636772baf4a7bacc86b5cd461d1891d26c23141ff1",
  deps    = { "readline", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
