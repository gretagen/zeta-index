return {
  name    = "libnma-common",
  version = "1.10.6-3-x86_64",
  summary = "networkManager GUI client library (common files)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libnma-common/libnma-common-1.10.6-3-x86_64.pkg.tar.zst",
  sha256  = "001bd6e84ba17e2b470dfee6c624eecf5086778f776e41d463dcf9532390c4b3",
  deps    = { "libdconf", "gcr-4", "iso-codes", "libnm", "mobile-broadband-provider-info" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/glib-2.0/schemas/org.gnome.nm-applet.eap.gschema.xml")
  end,
}
