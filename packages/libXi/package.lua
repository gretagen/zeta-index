return {
  name    = "libXi",
  version = "1.8.2",
  summary = "X11 Input extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXi/libXi-1.8.2.tar.gz",
  sha256  = "9c1798d52b372e29279b26b219a2362410fc1a1c1e5627a30bae87cdd86b6eb4",
  deps    = { "glibc", "libX11", "libXext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXi.so.6 && readelf -d " .. p.install_root .. "/usr/lib/libXi.so.6 | grep -q 'libXi.so.6'")
  end,
}
