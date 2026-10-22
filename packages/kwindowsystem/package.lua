return {
  name    = "kwindowsystem",
  version = "6.13.0",
  summary = "KDE: KWindowSystem",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwindowsystem/kwindowsystem-6.13.0.tar.gz",
  sha256  = "0e986a0d5fe1cd7b5dbdcd915dbc1bd67227f1542255683cac3b7a722871fe81",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
