return {
  name    = "libmd",
  version = "1.1.0",
  summary = "Message Digest library (provides BSD hash functions)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmd/libmd-1.1.0.tar.gz",
  sha256  = "d99df4750b5d874f343359beb229a116546508442c1198b188e33975c96d085b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmd.so.0")
  end,
}
