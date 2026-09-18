return {
  name    = "shared-mime-info",
  version = "2.5.1",
  summary = "Freedesktop.org shared MIME database and update-mime-database",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shared-mime-info/shared-mime-info-2.5.1.tar.gz",
  sha256  = "2d587854f6e422f4fa763ea5abb93b1a41d140f48b2dae3996288a453ba58747",
  deps    = { "glibc", "glib", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/mime/mime.cache && test -x " .. p.install_root .. "/usr/bin/update-mime-database")
  end,
}
