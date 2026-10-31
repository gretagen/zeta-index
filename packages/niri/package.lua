return {
  name    = "niri",
  version = "26.04-1-x86_64",
  summary = "Scrollable-tiling Wayland compositor (smithay)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/niri/niri-26.04-1-x86_64.pkg.tar.zst",
  sha256  = "6b98d1d686b5d26126f2eeeaaef4bcb3df9afe95da5e1bee6ef28edc05fbe82a",
  deps    = { "cairo", "glib", "glibc", "libdisplay-info", "libgcc", "libinput", "pipewire", "xkbcommon", "mesa-full", "pango", "pixman", "seatd", "systemd-libs", "xdg-desktop-portal" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/niri")
  end,
}
