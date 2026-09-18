return {
  name    = "libshout",
  version = "3.2.0",
  summary = "Icecast streaming library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libshout/libshout-3.2.0.tar.gz",
  sha256  = "d05df53efc72f5e07031eddb93c401c7ac56126ba58b04ec92785ee276fb7521",
  deps    = { "glibc", "libogg", "libtheora", "libvorbis", "openssl", "speex" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libshout.so.3")
  end,
}
