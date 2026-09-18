return {
  name    = "icu",
  version = "78.3",
  summary = "International Components for Unicode (libicui18n/libicuuc/libicudata), required by Qt 5",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/icu/icu-78.3.tar.gz",
  sha256  = "0b6665cac04ddd4b93ca1d2e7e7821d61eb6b3e637a3a9eb735ca51972bb1125",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libicui18n.so.78")
  end,
}
