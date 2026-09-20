return {
  name    = "libvdpau",
  version = "1.5",
  summary = "VDPAU library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libvdpau/libvdpau-1.5-4-x86_64.pkg.tar.zst",
  sha256  = "fcdb6731dbc33afddd899de00a113d26d7dd4c69ae6a2dcb25754085b55d90b5",
  deps    = { "glibc", "libX11", "libXext", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
