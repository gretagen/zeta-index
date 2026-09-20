return {
  name    = "liblangtag",
  version = "0.6.8",
  summary = "interface library to access/deal with tags for identifying languages",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/liblangtag/liblangtag.pkg.tar.zst",
  sha256  = "2a53ead9318b66bd43e1219220d2d99066e61187d090410bd33f29b45b096e3f",
  deps    = { "libxml2", "glib2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
