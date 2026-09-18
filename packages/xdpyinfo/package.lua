return {
  name    = "xdpyinfo",
  version = "1.2.0",
  summary = "Display information utility for X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdpyinfo/xdpyinfo-1.2.0.tar.gz",
  sha256  = "b00a72ad77122bdef1e98c28cc5dfcec5fcf4b00209355548e60c3501c6a6c8e",
  deps    = { "glibc", "libX11", "libXcomposite", "libXext", "libXi", "libXrender", "libXtst", "libXxf86vm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xdpyinfo")
  end,
}
