return {
  name    = "fluxbox",
  version = "1.3.7+221+g36f99b92-1-x86_64",
  summary = "Lightweight stacking window manager for X11",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fluxbox/fluxbox-1.3.7+221+g36f99b92-1-x86_64.pkg.tar.zst",
  sha256  = "0dbc1cbe0b4f0661f7c863cbc890016abf466898062eee4239a38f2097da4a45",
  deps    = { "fontconfig", "fribidi", "imlib2", "libXft", "libXinerama", "libXpm", "libXrandr" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fluxbox")
  end,
}
