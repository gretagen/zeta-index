return {
  name    = "power-profiles-daemon",
  version = "0.30",
  summary = "Makes power profiles management available over D-Bus (laptops)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/power-profiles-daemon/power-profiles-daemon-0.30.tar.gz",
  sha256  = "54919af2b5f5c7a5744c5c2b6d6178d52ec8bb3ee3822a6bd0e1d3a256ba6447",
  deps    = { "glib", "systemd-libs", "polkit", "libgudev", "python-gobject" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/power-profiles-daemon && test -x " .. p.install_root .. "/usr/bin/powerprofilesctl && python3 -c \"import ast; ast.parse(open('" .. p.install_root .. "/usr/bin/powerprofilesctl').read())\" && test -f " .. p.install_root .. "/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service && grep -q SystemdService=power-profiles-daemon.service " .. p.install_root .. "/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service && test -f " .. p.install_root .. "/usr/share/polkit-1/actions/power-profiles-daemon.policy && grep -q switch-profile " .. p.install_root .. "/usr/share/polkit-1/actions/power-profiles-daemon.policy")
  end,
}
