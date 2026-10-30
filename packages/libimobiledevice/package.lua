return {
  name    = "libimobiledevice",
  version = "1.4.0-2-x86_64",
  summary = "library to communicate with services on iOS devices using native protocols",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libimobiledevice/libimobiledevice-1.4.0-2-x86_64.pkg.tar.zst",
  sha256  = "52577eb2e9dae9385e19bc0b5ce7b3fc4df127565edcae9b1867926f79e58b22",
  deps    = { "glibc", "libimobiledevice-glue", "libplist", "libtatsu", "libusbmuxd", "openssl", "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libimobiledevice-1.0.so.6.1.0")
  end,
}
