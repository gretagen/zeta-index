return {
  name    = "pluma",
  version = "1.28.0",
  summary = "Text editor for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pluma/pluma-1.28.0.tar.gz",
  sha256  = "d29dd0a24db6489f0508598f72e0817fa84aac86c9eaab46be5e88632697a17f",
  deps    = { "glibc", "glib", "gtk3", "iso-codes", "mate-desktop", "zenity", "gtksourceview4", "libpeas", "gettext", "enchant", "libSM" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/pluma")
  end,
}
