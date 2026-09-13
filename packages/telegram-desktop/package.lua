return {
  name    = "telegram-desktop",
  version = "7.2.8",
  summary = "Telegram Desktop messaging client (official static build)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-providence/refs/heads/main/telegram-desktop/telegram-desktop-7.2.8.tar.gz",
  sha256  = "37633878c27040bb1e7e9c405bb37d651dead11c9bba6482468c331c94ea73d1",
  deps    = { "glibc", "glib", "cairo", "pango", "freetype", "fontconfig" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/telegram-desktop -a -f " .. p.install_root .. "/usr/share/telegram/Telegram")
  end,
}
