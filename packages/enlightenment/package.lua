return {
  name    = "enlightenment",
  version = "0.27.1-1-x86_64",
  summary = "enlightenment window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/enlightenment/enlightenment-0.27.1-1-x86_64.pkg.tar.zst",
  sha256  = "07de85faaa7a8202c24382085595773ff29d414ce0d30ac9ece588ade8502514",
  deps    = { "alsa-lib", "bc", "bluez", "efl", "hicolor-icon-theme", "libexif", "librsvg", "libpulse", "xkbcommon", "pam", "pulseaudio", "ttf-liberation", "udisks2", "util-linux-libs", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/enlightenment")
  end,
}
