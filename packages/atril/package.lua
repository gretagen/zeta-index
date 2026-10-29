return {
  name    = "atril",
  version = "1.28.1",
  summary = "Document viewer for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/atril/atril-1.28.1.tar.gz",
  sha256  = "49ed0f51b50c99cfcdd90185a033c80bf67af866e4c4325bfd05ab7ba8b7f93a",
  deps    = { "libsecret", "poppler", "caja", "libarchive", "libSM", "libICE", "glibc", "glib", "gtk3", "djvulibre", "libspectre", "libgxps", "libgepub", "gettext", "poppler-glib", "cairo", "webkit2gtk-4.1", "libsynctex", "mate-desktop" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/atril")
  end,
}
