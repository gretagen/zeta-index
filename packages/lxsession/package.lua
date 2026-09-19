return {
  name    = "lxsession",
  version = "0.5.6",
  summary = "LXDE session manager (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxsession/lxsession-0.5.6-2-x86_64.pkg.tar.zst",
  sha256  = "e3b71ffbc3054a5b0af677e0695a90d794e3559a76301786476493e6250bd157",
  deps    = { "bash", "cairo", "gdk-pixbuf", "glib", "gtk3", "libX11", "polkit" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxsession")
  end,
}
