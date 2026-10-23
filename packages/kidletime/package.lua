return {
  name    = "kidletime",
  version = "6.13.0",
  summary = "KDE: KIdleTime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kidletime/kidletime-6.13.0.tar.gz",
  sha256  = "2363c278e637ffa3195192c90c501c510488d4c9915b60effa22fc58f70ab89f",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols", "libxss" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
