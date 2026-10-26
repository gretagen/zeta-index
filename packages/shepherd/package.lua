return {
  name    = "shepherd",
  version = "1.0.9-2",
  summary = "GNU init system and service manager written in Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd/shepherd-1.0.9-2.tar.gz",
  sha256  = "1ebbb9988bd347a4119d0de0cc92d786e555019f6dad82f007622af1c0d873a9",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/shepherd && test -x " .. p.install_root .. "/usr/bin/herd && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd.scm && grep -q '(define %sysconfdir \"/etc\")' " .. p.install_root .. "/usr/share/guile/site/3.0/shepherd/config.scm")
  end,
}
