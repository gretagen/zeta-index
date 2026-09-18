return {
  name = "libXcomposite",
  version = "0.4.7",
  summary = "X11 Composite extension client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXcomposite/libXcomposite-0.4.7.tar.gz",
  sha256 = "e2dd46c6911ddeb3baea53a2c7c7380473e7f72dbb5ba79bea5f9bea66b921bb",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXcomposite.so.1")
  end,
}
