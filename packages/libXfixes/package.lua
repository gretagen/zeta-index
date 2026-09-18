return {
  name = "libXfixes",
  version = "6.0.2",
  summary = "X11 XFixes extension client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXfixes/libXfixes-6.0.2.tar.gz",
  sha256 = "9a8052c5220f876871194cfce8678d50fc1b8d825bf456d0fc72ab27237ecb45",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXfixes.so.3")
  end,
}
