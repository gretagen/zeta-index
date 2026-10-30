return {
  name    = "libnautilus-extension",
  version = "51.1-1-x86_64",
  summary = "extension interface for Nautilus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libnautilus-extension/libnautilus-extension-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "671d17197e2dc88543f6cbc9883747f4d3d10d4c5cfadd0f384f338f3b5cce95",
  deps    = { "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnautilus-extension.so.4.1")
  end,
}
