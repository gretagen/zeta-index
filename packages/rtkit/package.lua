return {
  name    = "rtkit",
  version = "0.14",
  summary = "RealtimeKit dbus service (thread priority mediation)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/rtkit/rtkit-0.14.tar.gz",
  sha256  = "40da1bfa662b8a6e77f5a124a66ae6f0239c9dffa471b65ec3bd8edb37c5cb35",
  deps    = { "glibc", "glib", "systemd-libs", "polkit", "dbus", "libcap" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/rtkit-daemon && grep -q org.freedesktop.RealtimeKit1 " .. p.install_root .. "/usr/share/dbus-1/system-services/org.freedesktop.RealtimeKit1.service && test -f " .. p.install_root .. "/usr/share/polkit-1/actions/org.freedesktop.RealtimeKit1.policy && ! ls " .. p.install_root .. "/usr/lib/systemd 2>/dev/null | grep -q .")
  end,
}
