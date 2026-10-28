return {
  name    = "mate-menus",
  version = "1.28.0",
  summary = "Menu system for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-menus/mate-menus-1.28.0.tar.gz",
  sha256  = "9de0d694a097b08fd752cfb801f1e042a59c8ddf19a5f65c6689e624d028e655",
  deps    = { "glibc", "glib", "gtk3", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
