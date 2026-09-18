return {
  name    = "gcr-4",
  version = "4.4.1",
  summary = "GCR certificate library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gcr-4/gcr-4-4.4.1.pkg.tar.zst",
  sha256  = "95097d48773a225fc4f5b14972df0e49a266c977c62ffa6e478fe2a7251dd5e9",
  deps    = { "glib", "gnutls", "libsecret", "openssh", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
