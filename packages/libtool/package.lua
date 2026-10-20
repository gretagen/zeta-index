return {
  name    = "libtool",
  version = "2.6.2",
  summary = "Generic library support script (m4 macros and libtoolize)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtool/libtool-2.6.2.tar.gz",
  sha256  = "230016df8a0057c925b4281fcac72dbdc903c507ccc2abd2b4e367ec1fcdda44",
  deps    = { "glibc", "m4" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/libtoolize && test -f " .. p.install_root .. "/usr/share/aclocal/libtool.m4 && test -x " .. p.install_root .. "/usr/bin/libtool && " .. p.install_root .. "/usr/bin/libtool --version | grep -q 2.6.2")
  end,
}
