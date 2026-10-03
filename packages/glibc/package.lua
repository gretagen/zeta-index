return {
  name    = "glibc",
  version = "2.44-2",
  summary = "GNU C Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glibc/glibc-2.44-2.tar.gz",
  sha256  = "17fa9a1e602ee121bdecebaa506ae58a4c78dfbf84e2a30a89de9ee311f9a72b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/lib64/ld-linux-x86-64.so.2 && test -e " .. p.install_root .. "/lib64/libc.so.6")
    p:run("test -L " .. p.install_root .. "/usr/bin/ldconfig")
  end,
}
