return {
  name    = "mate-calc",
  version = "1.28.0",
  summary = "Calculator for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-calc/mate-calc-1.28.0.tar.gz",
  sha256  = "a4c87d690cf45cb1148c71ba4a4d7d4b8189e01b0dcd01e0b13e1234feddcca5",
  deps    = { "mpfr", "libmpc", "glibc", "gtk3", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mate-calc")
  end,
}
