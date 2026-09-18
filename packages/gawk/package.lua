return {
  name    = "gawk",
  version = "5.4.1",
  summary = "GNU awk - pattern scanning and processing language",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gawk/gawk-5.4.1.tar.gz",
  sha256  = "bf482155ac29fdf49ed65f17553aa6ec69329f450ced7dc8d79458a828d039f2",
  deps    = { "glibc", "mpfr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gawk && test -L " .. p.install_root .. "/usr/bin/awk")
  end,
}
