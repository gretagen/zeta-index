return {
  name = "libXinerama",
  version = "1.1.6",
  summary = "X11 Xinerama extension client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXinerama/libXinerama-1.1.6.tar.gz",
  sha256 = "9041a97bf08b04b78249b1a249796b2f1a5f713116003658cae6a8f3ad738313",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXinerama.so.1")
  end,
}
