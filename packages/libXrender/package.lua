return {
  name = "libXrender",
  version = "0.9.12",
  summary = "X Render extension client library (X11)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXrender/libXrender-0.9.12.tar.gz",
  sha256 = "35d00e9ca5fa56297380989154d678cc083a3941ab8ca44155bbc9e33b30b479",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXrender.so.1")
  end,
}
