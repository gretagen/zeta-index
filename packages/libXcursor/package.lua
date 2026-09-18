return {
  name = "libXcursor",
  version = "1.2.3",
  summary = "X11 cursor management and image loading library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXcursor/libXcursor-1.2.3.tar.gz",
  sha256 = "47f031c24b7ffc994cffa90aac29224e4240da227d7bd01d7c2b085d6ee7a085",
  deps = { "glibc", "libX11", "libXfixes", "libXrender" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXcursor.so.1")
  end,
}
