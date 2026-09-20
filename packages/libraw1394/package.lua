return {
  name    = "libraw1394",
  version = "2.1.2",
  summary = "IEEE 1394 raw access library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libraw1394/libraw1394-2.1.2-4-x86_64.pkg.tar.zst",
  sha256  = "c4e68646b84e8657d77d50dfc8c9849df911729a4ed8daf54c042b21ae6bc4d4",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
