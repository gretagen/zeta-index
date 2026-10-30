return {
  name    = "libspeechd",
  version = "0.12.1-3-x86_64",
  summary = "high-level device independent layer for speech synthesis interface",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libspeechd/libspeechd-0.12.1-3-x86_64.pkg.tar.zst",
  sha256  = "532818152e492b1512ffa18c9c2b6a9d5f2b7cc6ccf8c665b8798e2eb1e095ef",
  deps    = { "glib", "libtool" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libspeechd.so.2.6.0")
  end,
}
