return {
  name    = "libdisplay-info",
  version = "0.3.0",
  summary = "EDID and DisplayID library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdisplay-info/libdisplay-info-0.3.0.tar.gz",
  sha256  = "b74524b097fcaa1bd2417cc52fb0e2ccd6c865e7e50fcd1a7f143376bb4646f0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdisplay-info.so.3")
  end,
}
