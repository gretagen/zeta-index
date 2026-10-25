return {
  name    = "p11-kit",
  version = "0.4.8-2",
  summary = "PKCS#11 module loading library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/p11-kit/p11-kit-0.4.8-2.tar.gz",
  sha256  = "e20f6111755ff260868ee0d2b3507b30c6ed7cfccb796936836082d9d602d7b1",
  deps    = { "glibc", "libtasn1", "libffi" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libp11-kit.so.0* >/dev/null && test -f " .. p.install_root .. "/usr/lib/pkgconfig/p11-kit-1.pc && test -x " .. p.install_root .. "/usr/bin/p11-kit")
  end,
}
