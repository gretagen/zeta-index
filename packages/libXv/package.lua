return {
  name    = "libXv",
  version = "1.0.13-2",
  summary = "X11 Video extension library (fixed .so symlinks)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXv/libXv-1.0.13-2.tar.gz",
  sha256  = "3755127c41554a72a38a935561b0ef2a87b85bbf2e09dbcf67df67723e44fe57",
  deps    = { "glibc", "libX11", "libXext" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -L " .. p.install_root .. "/usr/lib/libXv.so.1 && test -e " .. p.install_root .. "/usr/lib/libXv.so.1.0.0 && readelf -d " .. p.install_root .. "/usr/lib/libXv.so.1.0.0 | grep -q 'Library soname: \\[libXv.so.1\\]'")
  end,
}
