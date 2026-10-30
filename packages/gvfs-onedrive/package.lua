return {
  name    = "gvfs-onedrive",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - Microsoft OneDrive backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-onedrive/gvfs-onedrive-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "4c3f4b81be8814918358017e58c01940e340c08f298c74934c77d46cf20865c0",
  deps    = { "gvfs-goa", "glib", "glibc", "libgcc", "libgoa", "msgraph" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfsd-onedrive")
  end,
}
