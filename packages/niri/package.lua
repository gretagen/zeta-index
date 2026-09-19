return {
  name    = "niri",
  version = "26.04",
  summary = "Scrollable-tiling Wayland compositor (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/niri/niri-26.04-1-x86_64.pkg.tar.zst",
  sha256  = "6b98d1d686b5d26126f2eeeaaef4bcb3df9afe95da5e1bee6ef28edc05fbe82a",
  deps    = { "glibc", "cairo", "gcc", "glib", "libdisplay-info", "libglvnd", "libinput", "mesa-drivers", "pango", "pipewire", "pixman", "seatd", "systemd-libs", "wayland", "xdg-desktop-portal", "xkbcommon" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/niri")
    p:run("test -x " .. p.install_root .. "/usr/bin/niri-session")
    p:run("test -f " .. p.install_root .. "/usr/share/wayland-sessions/niri.desktop")
  end,
}
