return {
  name    = "liburing",
  version = "2.15",
  summary = "Linux-native io_uring I/O access library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/liburing/liburing.pkg.tar.zst",
  sha256  = "ceaf9e41bcd5cb06efcffbc90a39628b7a5cae5490c5e6db810a792450070ad2",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
