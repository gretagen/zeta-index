return {
  name    = "passim",
  version = "0.1.12-1-x86_64",
  summary = "Local caching server for fwupd (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/passim/passim-0.1.12-1-x86_64.pkg.tar.zst",
  sha256  = "21d94c5c614e5360dacfd7529c8d928a527e8e1317cbd98e7204c837b4c041ee",
  deps    = { "avahi", "glib", "gnutls", "hicolor-icon-theme", "libsoup3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpassim.so.1")
  end,
}
