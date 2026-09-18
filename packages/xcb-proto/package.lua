return {
  name = "xcb-proto",
  version = "1.17.0",
  summary = "XCB protocol descriptions (build-time dependency)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-proto/xcb-proto-1.17.0.tar.gz",
  sha256 = "e10639a331a9d8414a32292c5a5ea1dc178d7d34cec02eaa57c827245747ad08",
  deps = {},
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/share/xcb/xproto.xml")
  end,
}
