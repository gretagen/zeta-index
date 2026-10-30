return {
  name    = "libosinfo",
  version = "1.12.0-3-x86_64",
  summary = "gObject based library API for managing information about operating systems, hypervisors and",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libosinfo/libosinfo-1.12.0-3-x86_64.pkg.tar.zst",
  sha256  = "e295d4829f8478f8e19f0d85637477558397ba8978e29688e3eb42cb6c6e391e",
  deps    = { "glib", "glibc", "hwdata", "libgcc", "libsoup3", "libxml2", "libxslt", "osinfo-db" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libosinfo-1.0.so.0.1012.0")
  end,
}
