return {
  name    = "libnm",
  version = "1.58.1",
  summary = "NetworkManager client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnm/libnm.pkg.tar.zst",
  sha256  = "a93792b3bf71f9629716d2d81c1010825ce3a89feb985db401eb98f784e3932f",
  deps    = { "glib2", "libgcc", "nss", "systemd-libs", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
