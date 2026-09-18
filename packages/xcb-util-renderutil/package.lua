return {
  name    = "xcb-util-renderutil",
  version = "0.3.10",
  summary = "XCB render utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util-renderutil/xcb-util-renderutil-0.3.10.tar.gz",
  sha256  = "edf26a8e83f37c291d5d3fa0e9138357db8117cd6b303c61923aeb0ce4aeb380",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-render-util.so.0")
  end,
}
