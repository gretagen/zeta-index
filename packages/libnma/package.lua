return {
  name    = "libnma",
  version = "1.10.6",
  summary = "NetworkManager front-end library (GTK widgets)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libnma/libnma-1.10.6.tar.gz",
  sha256  = "c6d3eb5aaea5c5ac1d6d65f3840a45244d9cdb0dd782c1326741dd01a72b5a0e",
  deps    = { "glibc", "glib", "gtk4", "gtk3", "networkmanager", "gcr-4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnma-gtk4.so.0 && test -f " .. p.install_root .. "/usr/share/gir-1.0/NMA-1.0.gir && test -f " .. p.install_root .. "/usr/include/libnma/nma-ui-utils.h")
  end,
}
