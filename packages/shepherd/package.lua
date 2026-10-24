return {
  name    = "shepherd",
  version = "1.0.9",
  summary = "GNU init system and service manager written in Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd/shepherd-1.0.9.tar.gz",
  sha256  = "1dede731088e297a5f2200ac7d95f46678ba9de0906499527012acf86f80754a",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/shepherd && test -x " .. p.install_root .. "/usr/bin/herd && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd.scm")
  end,
}
