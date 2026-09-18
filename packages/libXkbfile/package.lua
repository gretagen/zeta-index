return {
  name    = "libXkbfile",
  version = "1.1.3",
  summary = "X11 XKB file manipulation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXkbfile/libXkbfile-1.1.3.tar.gz",
  sha256  = "f5ab236a0f170267a354fc978497dc6484f637e789c6e9ef79e4672d5b4657f4",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxkbfile.so.1 && readelf -d " .. p.install_root .. "/usr/lib/libxkbfile.so.1 | grep -q 'libxkbfile.so.1'")
  end,
}
