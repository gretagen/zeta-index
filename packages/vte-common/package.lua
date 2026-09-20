return {
  name    = "vte-common",
  version = "0.84.1",
  summary = "Virtual Terminal Emulator widget (common files)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/vte-common/vte-common.pkg.tar.zst",
  sha256  = "006cda5b69d887ddca9e347355b2a25ff3a59cb804cec6442c1dbc9c1a681daf",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
