return {
  name    = "automake",
  version = "1.18.1",
  summary = "GNU Automake - generates Makefile.in from Makefile.am (automake, aclocal)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/automake/automake-1.18.1.tar.gz",
  sha256  = "c89c43160d05ec3f7e89acb4b5c53c13640f635f6b382698dac31eed58043a22",
  deps    = { "perl", "autoconf", "m4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/automake -a -x " .. p.install_root .. "/usr/bin/aclocal && " .. p.install_root .. "/usr/bin/aclocal --version | grep -q '1.18.1'")
  end,
}
