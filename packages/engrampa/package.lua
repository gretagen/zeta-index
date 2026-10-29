return {
  name    = "engrampa",
  version = "1.28.2",
  summary = "File archiver for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/engrampa/engrampa-1.28.2.tar.gz",
  sha256  = "6f244aa0e62fed9d1f40ef79cae23a2ae1d6cc178cfe25a4015ef97e5d42825e",
  deps    = { "libjson-glib", "caja", "libSM", "libICE", "glibc", "gtk3", "gzip", "gettext", "libarchive", "tar", "unzip", "zip" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/engrampa")
  end,
}
