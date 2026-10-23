return {
  name    = "kstatusnotifieritem",
  version = "6.13.0",
  summary = "KDE: Implementation of Status Notifier Items",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kstatusnotifieritem/kstatusnotifieritem-6.13.0.tar.gz",
  sha256  = "eca032e2ba460fdd8fb13a5e2a3ca3767c694195252dd95bc37597d7eebe6985",
  deps    = { "glibc", "qtbase", "gcc", "kwindowsystem" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
