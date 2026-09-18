return {
  name    = "exo",
  version = "4.20.0",
  summary = "Application development library for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/exo/exo-4.20.0.tar.gz",
  sha256  = "51fc0ba793c444d194225be62bf757140781f1e6dcd4da591c980e2cee1c5e33",
  deps    = { "glibc", "libxfce4util", "libxfce4ui", "gtk3", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libexo-2.so.0 -a -e " .. p.install_root .. "/usr/bin/exo-open")
  end,
}
