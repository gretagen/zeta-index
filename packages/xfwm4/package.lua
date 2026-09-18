return {
  name    = "xfwm4",
  version = "4.20.0",
  summary = "Xfce window manager with compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfwm4/xfwm4-4.20.0.tar.gz",
  sha256  = "b68c6ede68ca4739b97f694179cbd707f512913365d8cb76bbc525a34775ed3a",
  deps    = { "glibc", "libxfce4ui", "libxfce4util", "xfconf", "gtk3", "libX11", "libXcomposite", "libXdamage", "libXext", "libXfixes", "libXinerama", "libXpresent", "libXrandr", "libXrender", "libXres", "libSM", "libICE", "libepoxy", "harfbuzz", "cairo", "pango" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfwm4")
  end,
}
