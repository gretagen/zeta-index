return {
  name    = "libproxy",
  version = "0.5.12",
  summary = "Proxy access library (pac/dns/wpad resolution)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libproxy/libproxy-0.5.12.tar.gz",
  sha256  = "84470f1a454657d076e024724556051e804476573a2293fc492fced3ac16da59",
  deps    = { "glibc", "curl", "duktape", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libproxy.so.1 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libproxy-1.0.pc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libproxy-1.0")
  end,
}
