return {
  name    = "xsv",
  version = "0.13.0",
  summary = "Fast CSV command line toolkit (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xsv/xsv-0.13.0.tar.gz",
  sha256  = "6e0db8e9cc583504742c2696cd29cceed60b9a6cd4be17926d96adbe239c7275",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xsv")
  end,
}
