return {
  name    = "libmatekbd",
  version = "1.28.0",
  summary = "Keyboard library for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmatekbd/libmatekbd-1.28.0.pkg.tar.zst",
  sha256  = "ba27e961d27477d5d4fa2f985133df6c967ecbea6df9727660f758b42146cba4",
  deps    = { "cairo", "gdk-pixbuf", "glib", "gtk3", "libX11", "libxklavier", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
