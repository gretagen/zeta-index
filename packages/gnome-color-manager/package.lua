return {
  name    = "gnome-color-manager",
  version = "3.36.2-2-x86_64",
  summary = "gNOME Color Profile Tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-color-manager/gnome-color-manager-3.36.2-2-x86_64.pkg.tar.zst",
  sha256  = "b608e049c0bcad0423097496d353490616003d8f0333220a003e8d2ca46a5a22",
  deps    = { "cairo", "colord", "libgcc", "gdk-pixbuf", "glib", "glibc", "gtk3", "hicolor-icon-theme", "lcms2", "libcolord", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gcm-import")
  end,
}
