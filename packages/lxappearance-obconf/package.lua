return {
  name    = "lxappearance-obconf",
  version = "0.2.4",
  summary = "Openbox theme plugin for lxappearance (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxappearance-obconf/lxappearance-obconf-0.2.4-3-x86_64.pkg.tar.zst",
  sha256  = "9f3b7c06ff41dd8315964a34c44daaeee21378a52f9227f5fa375d7c9ad10ea2",
  deps    = { "cairo", "gdk-pixbuf", "glib", "gtk3", "libX11", "libxml2", "lxappearance", "openbox" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/lxappearance/obconf.so 2>/dev/null || ls " .. p.install_root .. "/usr/lib/")
  end,
}
