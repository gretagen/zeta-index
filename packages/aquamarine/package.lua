return {
  name    = "aquamarine",
  version = "0.12.0",
  summary = "Lightweight Wayland compositor library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/aquamarine/aquamarine-0.12.0.tar.gz",
  sha256  = "6922d117b9cd880b708599c1346cace1b939aa5ac8c1a52cb1761a1353f33ba1",
  deps    = { "glibc", "hyprutils", "hyprwayland-scanner", "wayland", "wayland-protocols", "libinput", "seatd", "libdisplay-info", "hwdata", "libdrm", "mesa-drivers", "systemd-libs", "pixman" },
  archive = { strip = 1 },
}
