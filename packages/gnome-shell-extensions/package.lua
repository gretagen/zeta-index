return {
  name    = "gnome-shell-extensions",
  version = "51.0-1-any",
  summary = "extensions for GNOME shell, including classic mode",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-shell-extensions/gnome-shell-extensions-51.0-1-any.pkg.tar.zst",
  sha256  = "a9a62e26e63c1ad48adad3caa6e0977cf76953b0a2749440d51591cfc139ccbe",
  deps    = { "libdconf", "gnome-shell" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/systemd/user/gnome-session@gnome-classic.target.d/gnome-classic.session.conf")
  end,
}
