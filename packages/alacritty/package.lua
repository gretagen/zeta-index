return {
  name    = "alacritty",
  version = "0.15.1-2",
  summary = "GPU-accelerated terminal emulator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/alacritty/alacritty-0.15.1-2.tar.gz",
  sha256  = "d0035f4ff2a57bbb1c1d139529bdb0f0f01fd0765aed2e29a3b14393a4295380",
  deps    = { "glibc", "fontconfig", "freetype", "libX11", "libxcb", "xkbcommon", "wayland", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/alacritty && " .. p.install_root .. "/usr/bin/alacritty --version | grep -q 0.15.1 && grep -q xdg_wm_base " .. p.install_root .. "/usr/bin/alacritty && ! grep -q 'winit/wayland. feature' " .. p.install_root .. "/usr/bin/alacritty")
  end,
}
