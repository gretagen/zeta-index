return {
  name    = "udev-rules",
  version = "262",
  summary = "Standard udev rules and hwdb (data only, init-agnostic)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/udev-rules/udev-rules-262.tar.gz",
  sha256  = "99eba6784a0731d4918b0b5a347e8bcc69ab4ec281613b4b0cc4b05f03a934b9",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/udev/rules.d/50-udev-default.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-input-id.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-evdev.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/60-persistent-input.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/70-uaccess.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/70-touchpad.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/80-drivers.rules && test -f " .. p.install_root .. "/usr/lib/udev/hwdb.d/60-input-id.hwdb && test \"$(ls " .. p.install_root .. "/usr/lib/udev/hwdb.d/*.hwdb | wc -l)\" -ge 30")
  end,
}
