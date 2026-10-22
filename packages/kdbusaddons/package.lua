return {
  name    = "kdbusaddons",
  version = "6.13.0",
  summary = "KDE: KDBusAddons",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdbusaddons/kdbusaddons-6.13.0.tar.gz",
  sha256  = "29c17c5a7078a54a9d90b08a09b773940e4f4e33d6dcb60ba40d02c25062b522",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
