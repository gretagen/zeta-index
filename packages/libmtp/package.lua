return {
  name    = "libmtp",
  version = "1.1.23-1-x86_64",
  summary = "library implementation of the Media Transfer Protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmtp/libmtp-1.1.23-1-x86_64.pkg.tar.zst",
  sha256  = "5a4c1eabb75c870b39fbb96a22e9e8a51616f834265fee2516333605a5d07d1c",
  deps    = { "glibc", "libgcrypt", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmtp.so.9.4.0")
  end,
}
