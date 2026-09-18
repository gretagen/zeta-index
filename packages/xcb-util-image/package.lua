return {
  name    = "xcb-util-image",
  version = "0.4.1",
  summary = "XCB image utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util-image/xcb-util-image-0.4.1.tar.gz",
  sha256  = "efe9c19c5f4012364e82f06cbfb5bec33b44206a680550d9d0824e23f292b285",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-image.so.0")
  end,
}
