return {
  name    = "libltdl",
  version = "7.3.6",
  summary = "GNU libtool runtime loader (libltdl.so.7)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libltdl/libltdl-7.3.6.tar.gz",
  sha256  = "baccf8763b84001e8b0b1b79289dc41781d76bf442e6215149bc6e7c83ab0304",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libltdl.so.7")
  end,
}
