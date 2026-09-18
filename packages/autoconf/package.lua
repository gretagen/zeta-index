return {
  name    = "autoconf",
  version = "2.73",
  summary = "GNU Autoconf - generate configure scripts (autoconf, autoreconf, autoheader, autom4te)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/autoconf/autoconf-2.73.tar.gz",
  sha256  = "0b08051c6aea73ffca028f90aa4de5c2f009b517a4026f7e4a59cc7275faf814",
  deps    = { "perl", "m4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/autoconf -a -x " .. p.install_root .. "/usr/bin/autoreconf -a -x " .. p.install_root .. "/usr/bin/autom4te && " .. p.install_root .. "/usr/bin/autoconf --version | grep -q '2.73'")
  end,
}
