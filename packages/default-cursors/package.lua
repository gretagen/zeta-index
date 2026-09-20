return {
  name    = "default-cursors",
  version = "3",
  summary = "Default cursor set",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/default-cursors/default-cursors.pkg.tar.zst",
  sha256  = "ae52028372c3b2f66547baab41f1614b25472489d927b1a50b596bb8df7c056e",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
