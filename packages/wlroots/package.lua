return {
  name    = "wlroots",
  version = "0.20.2",
  summary = "Modular Wayland compositor library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wlroots/wlroots-0.20.2.tar.gz",
  sha256  = "e9a13bf0e55473a6b7bf152088da0f87df532a8ddc7c171025e9b9764d3753e8",
  deps    = { "glibc", "wayland", "libdrm", "xkbcommon", "pixman", "libglvnd", "mesa-drivers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwlroots-0.20.so")
  end,
}
