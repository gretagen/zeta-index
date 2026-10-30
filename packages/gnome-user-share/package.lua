return {
  name    = "gnome-user-share",
  version = "48.3-1-x86_64",
  summary = "easy to use user-level file sharing for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-user-share/gnome-user-share-48.3-1-x86_64.pkg.tar.zst",
  sha256  = "e7d30acde293b42ea8a893bc4bd3681d3f41ce3bdea126f49d9dbd5272c4805d",
  deps    = { "apache", "libdconf", "libgcc", "glib", "glibc", "mod_dnssd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gnome-user-share-webdav")
  end,
}
