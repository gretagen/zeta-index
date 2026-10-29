return {
  name    = "shared-mime-info",
  version = "2.5.1-2",
  summary = "shared MIME type database and update tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shared-mime-info/shared-mime-info-2.5.1-2.tar.gz",
  sha256  = "1b020f53750216ece08404fbeec21b26c6495e99ac3c81d4c047072b03ed2a99",
  deps    = { "glibc", "glib", "libxml2", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/update-mime-database && test -f " .. p.install_root .. "/usr/share/mime/packages/freedesktop.org.xml && test $(stat -c%s " .. p.install_root .. "/usr/share/mime/mime.cache) -gt 50000")
  end,
}
