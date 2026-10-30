return {
  name    = "cups",
  version = "2.4.20-1-x86_64",
  summary = "openPrinting CUPS - daemon package",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cups/cups-2.4.20-1-x86_64.pkg.tar.zst",
  sha256  = "4a9ff0c218eadce87a1c4392fd4f90b2aec345193996634dbe63c338aabf16fa",
  deps    = { "acl", "pam", "libcups", "cups-filters", "dbus", "systemd", "systemd-libs", "libpaper", "hicolor-icon-theme", "glibc", "libstdc++", "libgcc", "avahi", "gnutls" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/cancel")
  end,
}
