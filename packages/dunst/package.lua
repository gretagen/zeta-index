return {
  name    = "dunst",
  version = "1.13.2",
  summary = "Lightweight and customizable notification daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/dunst/dunst-1.13.2-2-x86_64.pkg.tar.zst",
  sha256  = "ce2cccd03942b33368b9ef3aba9999e1d33457bb8cd148d75fde2fa7654e4314",
  deps    = { "glibc", "dbus", "libxinerama", "libxrandr", "libxss", "pango", "gdk-pixbuf2", "glib2", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dunst")
  end,
}
