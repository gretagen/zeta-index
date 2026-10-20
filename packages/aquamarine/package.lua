return {
  name    = "aquamarine",
  version = "0.12.0-2",
  summary = "Lightweight Wayland compositor library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/aquamarine/aquamarine-0.12.0-2.tar.gz",
  sha256  = "0b5df2c9fbc016b48fe84fbf322350d271de208229c1ebca0a03f48e38371bd7",
  deps    = { "glibc", "hyprutils", "hyprwayland-scanner", "wayland", "wayland-protocols", "libinput", "seatd", "libdisplay-info", "hwdata", "libdrm", "mesa-drivers", "systemd-libs", "pixman" },
  archive = { strip = 1 },
}
