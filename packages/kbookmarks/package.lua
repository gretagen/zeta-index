return {
  name    = "kbookmarks",
  version = "6.13.0",
  summary = "KDE: KBookmarks",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kbookmarks/kbookmarks-6.13.0.tar.gz",
  sha256  = "d5c30bcd6497f28a8f6b457ac787c4b0aa817b8af979f58a4c11fb36d57aae07",
  deps    = { "glibc", "qtbase", "gcc", "kconfig", "kcoreaddons", "kwidgetsaddons" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
