return {
  name    = "picom",
  version = "13",
  summary = "X11 compositor (picom, fork of compton)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/picom/picom-13.tar.gz",
  sha256  = "42be9c69823b623ce23d2cc8194a2a2fded26ec9c8a9815846b566dd9a654a7f",
  deps    = { "glibc", "pixman", "libX11", "libxcb", "xcb-util", "xcb-util-image", "xcb-util-renderutil", "libepoxy", "dbus", "pcre2", "libconfig", "libev" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/picom && " .. p.install_root .. "/usr/bin/picom --version | grep -q 'v13'")
  end,
}
