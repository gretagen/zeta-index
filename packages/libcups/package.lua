return {
  name    = "libcups",
  version = "2.4.19",
  summary = "CUPS printing library (libcups.so.2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcups/libcups-2.4.19.tar.gz",
  sha256  = "c6178a2af69fcf24aafda57fd6b6475df47477198c85adc2e815b0bba1cbf456",
  deps    = { "glibc", "avahi", "gnutls", "libz", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcups.so.2")
  end,
}
