return {
  name    = "guile",
  version = "3.0.11",
  summary = "GNU Scheme interpreter and library (GNU Guile)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile/guile-3.0.11.tar.gz",
  sha256  = "4023cabf591ce83ebca34b1cb6d154ad1e37b889db26b2013e1b3c8181c95ec4",
  deps    = { "glibc", "gmp", "libgc", "libunistring", "libffi", "libxcrypt", "readline", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/guile && test -x " .. p.install_root .. "/usr/bin/guild")
  end,
}
