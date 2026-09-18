return {
  name    = "libidn2",
  version = "0.4.0",
  summary = "Internationalized domain names",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libidn2/libidn2-0.4.0.tar.gz",
  sha256  = "857a09791d3b8d835b397f162583d38d85a0a3dee3ee4721435f244c77e2862f",
  deps    = { "glibc", "libunistring" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libidn2.so.0")
  end,
}
