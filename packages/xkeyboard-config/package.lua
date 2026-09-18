return {
  name    = "xkeyboard-config",
  version = "2.47",
  summary = "XKB keymap rules and symbols database",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xkeyboard-config/xkeyboard-config-2.47.tar.gz",
  sha256  = "f767eb6807b5f727d34af2ccd0ed66f2b28f9cca2e7563ae4da6e9077d6cca7a",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/X11/xkb/rules/evdev && test -f " .. p.install_root .. "/usr/share/X11/xkb/symbols/us")
  end,
}
