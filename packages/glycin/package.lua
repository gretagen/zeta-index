return {
  name    = "glycin",
  version = "2.1.5-2",
  summary = "GNOME image loading library (libglycin-2, gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glycin/glycin-2.1.5-2.tar.gz",
  sha256  = "d4b745630889fd7b9d33da485200179d3a7b3c8fbe7978677f7f7883547aa3b3",
  deps    = { "glibc", "glib", "gcc", "gtk4", "lcms2", "libseccomp" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libglycin-2.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists glycin-2")
  end,
}
