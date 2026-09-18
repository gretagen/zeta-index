return {
  name    = "glibc",
  version = "2.44",
  summary = "GNU C Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glibc/glibc-2.44.tar.gz",
  sha256  = "586b6e23c550e6f7dda26dc9a4dead3a91fdc9e9a823efded1fbfa01a7172710",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/lib64/ld-linux-x86-64.so.2 && test -e " .. p.install_root .. "/lib64/libc.so.6")
  end,
}
