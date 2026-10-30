return {
  name    = "wlsunset",
  version = "0.4.0-1-x86_64",
  summary = "day/night gamma adjustments for Wayland compositors",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wlsunset/wlsunset-0.4.0-1-x86_64.pkg.tar.zst",
  sha256  = "74ed843103179b8335a8ead5a618937c40eba28648e8071662c997dbefaa5e96",
  deps    = { "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wlsunset")
  end,
}
