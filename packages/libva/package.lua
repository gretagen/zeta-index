return {
  name    = "libva",
  version = "2.2300.0",
  summary = "Video Acceleration API",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libva/libva-2.2300.0.tar.gz",
  sha256  = "bad9670662d739c469ac3564f0ab7e6ccc8f08698eddc9b7acb1fe3571bec9c4",
  deps    = { "glibc", "libX11", "libXext", "libXfixes", "libdrm", "libxcb", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libva.so.2")
  end,
}
