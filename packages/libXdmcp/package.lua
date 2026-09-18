return {
  name = "libXdmcp",
  version = "1.1.5",
  summary = "X Display Manager Control Protocol library (X11)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXdmcp/libXdmcp-1.1.5.tar.gz",
  sha256 = "858c10bed57192f8fe1e3564ba7c89a8663b3b219fe5073ff8025d0a632eb704",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXdmcp.so.6")
  end,
}
