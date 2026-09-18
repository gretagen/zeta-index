return {
  name    = "lxqt-policykit",
  version = "2.1.0",
  summary = "LXQt component (lxqt-policykit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxqt-policykit/lxqt-policykit-2.1.0.tar.gz",
  sha256  = "3e9703a73395cde666a4a7a957860e51c73cc93f25fbf209c20557d0b2fbc1aa",
  deps    = { "glibc", "kwindowsystem", "liblxqt", "libqtxdg", "polkit-qt-1", "qtbase", "qtsvg", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxqt-policykit-agent")
  end,
}
