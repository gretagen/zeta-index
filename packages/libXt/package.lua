return {
  name = "libXt",
  version = "1.3.1",
  summary = "X11 toolkit intrinsics library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXt/libXt-1.3.1.tar.gz",
  sha256 = "0ee57494496da565ba200b18e46b1c5872a5024ebbcab8873ab083707e1f1a15",
  deps = { "glibc", "libICE", "libSM", "libX11", "libXau", "libXdmcp", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXt.so.6")
  end,
}
