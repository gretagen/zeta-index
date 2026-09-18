return {
  name    = "xcb-util",
  version = "0.4.1",
  summary = "Base utilities library for XCB",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util/xcb-util-0.4.1.tar.gz",
  sha256  = "83ff40799b3de21f7c959efa8eab382e16860fc464a108c033a855de5a0e8d75",
  deps    = { "glibc", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-util.so.1")
  end,
}
