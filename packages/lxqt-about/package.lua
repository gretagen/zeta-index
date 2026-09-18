return {
  name    = "lxqt-about",
  version = "2.1.0",
  summary = "LXQt component (lxqt-about)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-about/lxqt-about-2.1.0.tar.gz",
  sha256  = "b96d3d403589a75141beb6c16282117acf9f67b3497624490afc1aee69672785",
  deps    = { "glibc", "kwindowsystem", "liblxqt", "libqtxdg", "qtbase", "qtsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/applications || test -d " .. p.install_root .. "/usr/bin")
  end,
}
