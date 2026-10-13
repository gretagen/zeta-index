return {
  name    = "libxcb-imdkit",
  version = "1.0.9",
  summary = "X Input Method development support for xcb",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxcb-imdkit/libxcb-imdkit-1.0.9.tar.gz",
  sha256  = "dde13e1f19e3ca77f807de83e3223d57acec2a58c296a325a8b80f1faceee264",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-imdkit.so.1")
  end,
}
