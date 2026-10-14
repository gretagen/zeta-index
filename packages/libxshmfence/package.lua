return {
  name    = "libxshmfence",
  version = "1.3.3-2",
  summary = "X shared-memory fence sync primitives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxshmfence/libxshmfence-1.3.3-2.tar.gz",
  sha256  = "0dc68578ca1f208daeadf45d57c1f8f71a718e5c8fcf9f46fd95e6f6e0a1abe9",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/X11/xshmfence.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/xshmfence.pc && test -x " .. p.install_root .. "/usr/lib/libxshmfence.so")
  end,
}
