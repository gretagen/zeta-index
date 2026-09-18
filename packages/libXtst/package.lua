return {
  name    = "libXtst",
  version = "1.2.5",
  summary = "X11 Testing extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXtst/libXtst-1.2.5.tar.gz",
  sha256  = "d62afb3a974b4fde791081873966b96b77f16ae170e3ff3497c0f885aefbc2f4",
  deps    = { "glibc", "libX11", "libXext", "libXi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXtst.so.6 && readelf -d " .. p.install_root .. "/usr/lib/libXtst.so.6 | grep -q 'libXtst.so.6'")
  end,
}
