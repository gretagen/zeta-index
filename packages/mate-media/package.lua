return {
  name    = "mate-media",
  version = "1.28.1",
  summary = "Media manager for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-media/mate-media-1.28.1.tar.gz",
  sha256  = "a5aff7c02e42180873f3cfc21fae43999492a6eccfbb052ef7e9d48b707a9168",
  deps    = { "glibc", "glib", "gtk3", "libcanberra", "libmatemixer", "mate-desktop", "mate-panel", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
