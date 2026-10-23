return {
  name    = "libqaccessibilityclient",
  version = "0.6.0",
  summary = "KDE: Accessibilty tools helper library, used e.g. by screen readers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libqaccessibilityclient/libqaccessibilityclient-0.6.0.tar.gz",
  sha256  = "62363699c242e9fb0dfb683881de3960b9556dd9c5ccb5c8bf5e32fb082b9fa4",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
