return {
  name    = "xfce4-session",
  version = "4.20.4",
  summary = "Xfce session manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-session/xfce4-session-4.20.4.tar.gz",
  sha256  = "814b0d73f0bf8bd2c1926353350347a92ea54594c2cdd98bb48ca60c94da3828",
  deps    = { "glibc", "libxfce4windowing", "libxfce4ui", "libxfce4util", "xfconf", "polkit", "gtk3", "glib", "libSM", "libICE", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-session -a -e " .. p.install_root .. "/usr/lib/xfce4/session/xfsm-shutdown-helper")
  end,
}
