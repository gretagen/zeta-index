return {
  name    = "kwindowsystem",
  version = "6.13.0",
  summary = "KDE: KWindowSystem",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwindowsystem/kwindowsystem-6.13.0.tar.gz",
  sha256  = "a06642233dff8ad5547ce8591c2b16e443d438773b99699d389d75396bd243ac",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
