return {
  name = "libXrandr",
  version = "1.5.5",
  summary = "X11 RandR extension client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXrandr/libXrandr-1.5.5.tar.gz",
  sha256 = "574d51467c59c962a34b2a1415b625cad74ef8e8b20d0e9fe284cf7f06257aeb",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libXfixes", "libXrender", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXrandr.so.2")
  end,
}
