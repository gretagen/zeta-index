return {
  name    = "shepherd",
  version = "1.0.9",
  summary = "GNU init system and service manager written in Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd/shepherd-1.0.9.tar.gz",
  sha256  = "43e28bb0e83c71a0894fff2f8deefa4b81ab0b80835cda624387a28ae7907f8b",
  deps    = { "glibc", "guile", "fibers" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/shepherd && test -x " .. p.install_root .. "/usr/bin/herd && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd.scm")
  end,
}
