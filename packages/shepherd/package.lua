return {
  name    = "shepherd",
  version = "1.0.9-3",
  summary = "GNU init system and service manager written in Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd/shepherd-1.0.9-3.tar.gz",
  sha256  = "b9ebbb91358f432d097d3de5ffec83b6c57f429567b5c584cbdc9a1030962fe6",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/shepherd && test ! -e " .. p.install_root .. "/usr/bin/shepherd && test -x " .. p.install_root .. "/usr/bin/herd && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd.scm && grep -q '(define %sysconfdir \"/etc\")' " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd/config.scm")
  end,
}
