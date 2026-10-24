return {
  name    = "shepherd",
  version = "1.0.9",
  summary = "GNU init system and service manager written in Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd/shepherd-1.0.9.tar.gz",
  sha256  = "c9804ffebf62dea14d687574435baff0b46c48cdc47c468fba009c378a7c8f8b",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/shepherd && test -x " .. p.install_root .. "/usr/bin/herd && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd.scm")
  end,
}
