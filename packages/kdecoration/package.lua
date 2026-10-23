return {
  name    = "kdecoration",
  version = "6.3.6",
  summary = "KDE: Plugin-based library to create window decorations",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdecoration/kdecoration-6.3.6.tar.gz",
  sha256  = "51200d36a3ed290fc8aad297bde7233fb69ad8a29d86be0f51d0c1dcd1ce5646",
  deps    = { "glibc", "qtbase", "gcc", "ki18n" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
