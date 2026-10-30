return {
  name    = "yelp",
  version = "49.2-1-x86_64",
  summary = "get help with GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/yelp/yelp-49.2-1-x86_64.pkg.tar.zst",
  sha256  = "0a401aa54c01cf766def5e737eb089f2b6e4cc24d0082b3a044c302b87321f82",
  deps    = { "bzip2", "libdconf", "glib", "glibc", "gtk4", "hicolor-icon-theme", "libadwaita", "libxml2", "libxslt", "sqlite", "webkitgtk-6.0", "xz-utils", "yelp-xsl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/yelp")
  end,
}
