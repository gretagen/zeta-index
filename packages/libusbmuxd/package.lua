return {
  name    = "libusbmuxd",
  version = "2.1.1-2-x86_64",
  summary = "client library to multiplex connections from and to iOS devices",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libusbmuxd/libusbmuxd-2.1.1-2-x86_64.pkg.tar.zst",
  sha256  = "dcb2b0842a3f924142550704f4b968311c427dfe75b46da9c77b5906049a5a3f",
  deps    = { "glibc", "libgcc", "libimobiledevice-glue", "libplist" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libusbmuxd-2.0.so.7.0.1")
  end,
}
