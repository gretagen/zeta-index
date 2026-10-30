return {
  name    = "gvfs-dnssd",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - DNS-SD and WebDAV backend (macOS file sharing)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-dnssd/gvfs-dnssd-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "364aec49e220bcf2263397889ef4a08f1b13b319e4df7d40b2436a3eeb547651",
  deps    = { "gvfs", "avahi", "libdconf", "glib", "glibc", "libsoup3", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfsd-dav")
  end,
}
