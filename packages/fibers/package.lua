return {
  name    = "fibers",
  version = "1.3.1",
  summary = "Concurrent ML-like concurrency library for Guile Scheme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fibers/fibers-1.3.1.tar.gz",
  sha256  = "29d95250b7667cd3e74eb59f2003ee5b93993a0e45d875b10c005c271a12f73c",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/guile/site/3.0/fibers.scm && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/fibers/scheduler.scm")
  end,
}
