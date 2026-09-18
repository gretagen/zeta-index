return {
  name    = "lxappearance",
  version = "0.6.4",
  summary = "LXDE GTK theme switcher",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxappearance/lxappearance-0.6.4.tar.gz",
  sha256  = "1a9bd3659ae1126a53f2734f8adb9125c04cc408b7464822c068717216c0baea",
  deps    = { "glibc", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxappearance")
  end,
}
