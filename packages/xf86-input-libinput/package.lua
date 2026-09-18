return {
  name    = "xf86-input-libinput",
  version = "1.5.0",
  summary = "X.Org input driver based on libinput",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xf86-input-libinput/xf86-input-libinput-1.5.0.tar.gz",
  sha256  = "51ea6d2dbb9e323d4267c1466d21333a0c98d5ba49f26a02b2d6b6e7b1ceec59",
  deps    = { "glibc", "libinput", "xorg-server" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/xorg/modules/input/libinput_drv.so")
  end,
}
