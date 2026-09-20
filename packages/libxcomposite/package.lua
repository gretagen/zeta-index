return {
  name    = "libxcomposite",
  version = "0.4.7",
  summary = "X11 Composite extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxcomposite/libxcomposite.pkg.tar.zst",
  sha256  = "5d11e648ccccbd7cf19884a677441528d8546eb89a4fda57febb08446e619917",
  deps    = { "libxfixes", "xorgproto", "libx11", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
