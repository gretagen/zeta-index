return {
  name    = "libXxf86vm",
  version = "1.1.7",
  summary = "X11 XFree86 video mode extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXxf86vm/libXxf86vm-1.1.7.tar.gz",
  sha256  = "263847f3bc668809ec37e5e9ffa76ef4c90d820d0ee668610605a8463e252239",
  deps    = { "glibc", "libX11", "libXext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXxf86vm.so.1 && readelf -d " .. p.install_root .. "/usr/lib/libXxf86vm.so.1 | grep -q 'libXxf86vm.so.1'")
  end,
}
