return {
  name    = "spice-protocol",
  version = "0.14.5-1-any",
  summary = "headers for SPICE protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/spice-protocol/spice-protocol-0.14.5-1-any.pkg.tar.zst",
  sha256  = "aa9df517c035390c648a98156f48831535534b0ce28d4714050f8a253cd6a5d4",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/licenses/spice-protocol/COPYING")
  end,
}
