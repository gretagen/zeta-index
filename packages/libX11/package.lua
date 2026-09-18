return {
  name = "libX11",
  version = "1.8.13",
  summary = "X11 core client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libX11/libX11-1.8.13.tar.gz",
  sha256 = "3e95c6593975ec6f0a5450be89b55066252302cb45c26d1c8dc1cae7e6df1b19",
  deps = { "glibc", "libXau", "libXdmcp", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libX11.so.6")
  end,
}
