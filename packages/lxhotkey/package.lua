return {
  name    = "lxhotkey",
  version = "0.1.2",
  summary = "LXDE keyboard shortcuts configurator (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxhotkey/lxhotkey-0.1.2-3-x86_64.pkg.tar.zst",
  sha256  = "fb28e949e0e7e10936b3da3a85ba4bf128f7f80ec49d38bdcf6c50e7c8a3d63d",
  deps    = { "glib", "gtk3", "libfm", "libfm-extra", "libunistring", "libX11" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxhotkey")
  end,
}
