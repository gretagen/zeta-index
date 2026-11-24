return {
  name    = "pwvucontrol",
  version = "0.5.3",
  summary = "PipeWire volume control applet (GTK4/libadwaita)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pwvucontrol/pwvucontrol-0.5.3.tar.gz",
  sha256  = "3c35c6e5462813f9d41336befa5cdb305a44592125019bf4dcb6407c2b4cb692",
  deps    = { "glibc", "gcc", "glib", "gtk4", "libadwaita", "pipewire", "wireplumber" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pwvucontrol && ls " .. p.install_root .. "/usr/share/applications/ | grep -q pwvucontrol && ls " .. p.install_root .. "/usr/share/glib-2.0/schemas/ | grep -q pwvucontrol && PWVUCONTROL_RESOURCEDIR=" .. p.install_root .. "/usr/share/pwvucontrol timeout 5 " .. p.install_root .. "/usr/bin/pwvucontrol --help 2>&1 | grep -qi help")
  end,
}
