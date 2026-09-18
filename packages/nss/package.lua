return {
  name    = "nss",
  version = "3.124",
  summary = "Network Security Services (libnss3/libnspr4 runtime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nss/nss-3.124.tar.gz",
  sha256  = "bf5c5f96676baf6d64041831c8348bf04700e54aba5330b22cec9b9bf15335c2",
  deps    = { "glibc", "libtasn1" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnss3.so")
  end,
}
