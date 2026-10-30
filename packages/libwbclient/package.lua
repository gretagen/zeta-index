return {
  name    = "libwbclient",
  version = "4.25.1-1-x86_64",
  summary = "winbind client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libwbclient/libwbclient-4.25.1-1-x86_64.pkg.tar.zst",
  sha256  = "e95b14014c087d85e95c559d01fab035e8317a401c0241f3421902ff6ded7ee8",
  deps    = { "libbsd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libwbclient.so.0.16")
  end,
}
