return {
  name    = "steam",
  version = "1.0.0.87",
  summary = "Steam - Valve's digital game distribution platform",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/steam/steam-1.0.0.87-3-x86_64.pkg.tar.zst",
  sha256  = "3b59b784d238b6087d38bafa30ae38f4c9e656fb4330860575391c1bf37046ea",
  deps    = {
    "bash", "coreutils", "curl", "dbus", "freetype2", "gdk-pixbuf2",
    "glibc", "hicolor-icon-theme", "libgcc", "libxcrypt-compat",
    "libxkbcommon-x11", "nss", "python", "vulkan-icd-loader", "xz", "zenity",
    "lib32-alsa-plugins", "lib32-fontconfig", "lib32-gcc-libs", "lib32-glibc",
    "lib32-libglvnd", "lib32-libgpg-error", "lib32-libnm", "lib32-libva",
    "lib32-libx11", "lib32-libxcrypt-compat", "lib32-libxinerama", "lib32-libxss",
    "lib32-nss", "lib32-systemd", "lib32-vulkan-icd-loader",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/steam")
  end,
}
