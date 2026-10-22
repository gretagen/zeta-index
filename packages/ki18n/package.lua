return {
  name    = "ki18n",
  version = "6.24.0",
  summary = "KDE: Ki18n",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ki18n/ki18n-6.24.0.tar.gz",
  sha256  = "4a630ea6b793e46f6ff7743b408dac9879ae0200f347a9a5011b2084319f9bb1",
  deps    = { "glibc", "qtbase", "gcc", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
