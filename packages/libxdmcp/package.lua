return {
  name    = "libxdmcp",
  version = "1.1.5",
  summary = "X11 Display Manager Control Protocol library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxdmcp/libxdmcp.pkg.tar.zst",
  sha256  = "623c957c2fd4b427a0f5a531da44931f9f66521391ee0bd0e635479947036b65",
  deps    = { "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
