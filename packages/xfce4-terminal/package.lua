return {
  name    = "xfce4-terminal",
  version = "1.2.0",
  summary = "Terminal emulator for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-terminal/xfce4-terminal-1.2.0.tar.gz",
  sha256  = "79f196e4588d19948b08cd0fc39a77c3eddbdc1ed0f22239f78433894f8f8f5e",
  deps    = { "glibc", "vte", "libxfce4ui", "libxfce4util", "xfconf", "pcre2", "gtk3", "glib", "libX11", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-terminal")
  end,
}
