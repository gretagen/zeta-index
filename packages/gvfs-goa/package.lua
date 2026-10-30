return {
  name    = "gvfs-goa",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - Gnome Online Accounts backend (e.g. OwnCloud)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-goa/gvfs-goa-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "b76791c8bd4194ee719b48021a5ec3138b30b23f02aa506faa01b0e8051522b4",
  deps    = { "gvfs", "glib", "glibc", "libgcc", "libgoa" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfs-goa-volume-monitor")
  end,
}
