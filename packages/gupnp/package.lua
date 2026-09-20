return {
  name    = "gupnp",
  version = "0.14.5",
  summary = "Library to ease handling and implementation of UPnP A/V profiles",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gupnp/gupnp.pkg.tar.zst",
  sha256  = "56fe0988ea3a8548f5b7abe9b3c91a5600de7ef6ca768b53aa4a97133b9eb4b4",
  deps    = { "glib2", "libxml2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
