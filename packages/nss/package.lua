return {
  name    = "nss",
  version = "3.132",
  summary = "Network Security Services (headers + libs, dev-complete)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nss/nss-3.132.tar.gz",
  sha256  = "a5ddf9e3022c7aa99e4e558095d4e40823d1e7ea1ee6f21583db43354c8a55d3",
  deps    = { "glibc", "nspr", "libz", "sqlite", "libtasn1" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnss3.so && test -e " .. p.install_root .. "/usr/lib/libsmime3.so && test -f " .. p.install_root .. "/usr/include/nss/nss.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists nss && test -x " .. p.install_root .. "/usr/bin/certutil")
  end,
}
