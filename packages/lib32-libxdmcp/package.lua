return {
  name    = "lib32-libxdmcp",
  version = "1.1.5",
  summary = "X11 Display Manager Control Protocol library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxdmcp/lib32-libxdmcp.pkg.tar.zst",
  sha256  = "047b50d4ba112eef01b3e2eecc6d934093c2202d8981067c01dac811f8862285",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
