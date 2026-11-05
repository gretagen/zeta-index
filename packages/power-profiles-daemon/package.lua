return {
  name    = "power-profiles-daemon",
  version = "0.30-2",
  summary = "Makes power profiles management available over D-Bus (laptops)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/power-profiles-daemon/power-profiles-daemon-0.30-2.tar.gz",
  sha256  = "3756c2bb824bd6f5c354c29c345aba4a4c0ce8cab042713d05e2ba40575da005",
  deps    = { "glib", "systemd-libs", "polkit", "libgudev", "python-gobject" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/power-profiles-daemon && test -x " .. p.install_root .. "/usr/bin/powerprofilesctl && python3 -c \"import ast; ast.parse(open('" .. p.install_root .. "/usr/bin/powerprofilesctl').read())\" && test -f " .. p.install_root .. "/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service && grep -q SystemdService=power-profiles-daemon.service " .. p.install_root .. "/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service && grep -q Exec=/usr/libexec/power-profiles-daemon " .. p.install_root .. "/usr/share/dbus-1/system-services/net.hadess.PowerProfiles.service && test -f " .. p.install_root .. "/usr/share/polkit-1/actions/power-profiles-daemon.policy && grep -q switch-profile " .. p.install_root .. "/usr/share/polkit-1/actions/power-profiles-daemon.policy")
  end,
}
