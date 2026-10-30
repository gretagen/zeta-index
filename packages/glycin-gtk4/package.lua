return {
  name    = "glycin-gtk4",
  version = "2.2.5-1-x86_64",
  summary = "sandboxed and extendable image decoding - GTK4 integration",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/glycin-gtk4/glycin-gtk4-2.2.5-1-x86_64.pkg.tar.zst",
  sha256  = "31f3002b2358960c2370bea05cb033021993fbb40aa94c4867ac278aba1d0967",
  deps    = { "fontconfig", "glib", "glibc", "glycin", "gtk4", "lcms2", "libgcc", "libseccomp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libglycin-gtk4-2.so.0")
  end,
}
