return {
  name    = "wlroots",
  version = "0.20.2-2",
  summary = "Modular Wayland compositor library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wlroots/wlroots-0.20.2-2.tar.gz",
  sha256  = "724087b55057d2175580ed313d1df6540058db477eda685174441ac95d2b77b1",
  deps    = { "glibc", "wayland", "libdrm", "xkbcommon", "pixman", "egl", "mesa-drivers", "lcms2", "seatd", "libdisplay-info", "libliftoff", "libinput", "libxcb", "xcb-util-renderutil", "xcb-util-wm", "systemd-libs", "libglvnd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwlroots-0.20.so && test -f " .. p.install_root .. "/usr/lib/pkgconfig/wlroots-0.20.pc && test -f " .. p.install_root .. "/usr/include/wlroots-0.20/wlr/xwayland.h && nm -D " .. p.install_root .. "/usr/lib/libwlroots-0.20.so | grep -q wlr_xwayland_create")
  end,
}
