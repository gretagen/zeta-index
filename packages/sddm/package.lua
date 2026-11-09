return {
  name    = "sddm",
  version = "0.21.0",
  summary = "Qt-based display manager with X11 greeter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sddm/sddm-0.21.0.tar.gz",
  sha256  = "f3c5c97a0bf86effdd3972b0c019a6c1c7c8c05f8db3bc3152c6c81010aa1736",
  deps    = { "glibc", "pam", "elogind", "qtbase", "qtdeclarative", "qtsvg", "xkbcommon", "xkeyboard-config", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sddm && " .. p.install_root .. "/usr/bin/sddm --help | grep -q test-mode && " .. p.install_root .. "/usr/bin/sddm --example-config | grep -q Theme && test -f " .. p.install_root .. "/usr/etc/pam.d/sddm && test -f " .. p.install_root .. "/usr/etc/pam.d/sddm-autologin && test -d " .. p.install_root .. "/usr/share/sddm/themes/maldives && test -f " .. p.install_root .. "/usr/qml/SddmComponents/Button.qml")
  end,
}
