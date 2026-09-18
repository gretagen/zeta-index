return {
  name    = "a52dec",
  version = "0.0.0",
  summary = "A52 (AC-3) audio decoder lib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/a52dec/a52dec-0.0.0.tar.gz",
  sha256  = "c374c9a9dfbdad7f269e0070e2ebd1d0fd4b67d960448baea44c75b0b3e7b63d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/liba52.so.0")
  end,
}
