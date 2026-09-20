return {
  name    = "libnvme",
  version = "1.16.2",
  summary = "C Library for NVM Express on Linux",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libnvme/libnvme.pkg.tar.zst",
  sha256  = "eeac4e875668745c9d1cc41f995cc32d69bb23900af2ebbcb0d5d0d609f27fd1",
  deps    = { "dbus", "libgcc", "json-c", "keyutils", "liburing", "openssl", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
