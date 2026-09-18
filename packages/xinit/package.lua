return {
  name = "xinit",
  version = "1.4.4",
  summary = "X11 server startup tool (startx/xinit)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xinit/xinit-1.4.4.tar.gz",
  sha256 = "11f4c32e7de8297f6a677e3f49ae45d737bdaf4c278f8c7d3646e655ec6225e5",
  deps = { "glibc", "libX11" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/startx")
  end,
}
