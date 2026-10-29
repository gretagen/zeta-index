return {
  name    = "mate-terminal",
  version = "1.28.1",
  summary = "Terminal emulator for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-terminal/mate-terminal-1.28.1.tar.gz",
  sha256  = "de9f54ba4f3ad474b3c8622297165f8eb7159d929daa4d09be2ffe6db1d57044",
  deps    = { "glibc", "glib", "gtk3", "libSM", "gettext", "mate-desktop", "vte", "perl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-terminal")
  end,
}
