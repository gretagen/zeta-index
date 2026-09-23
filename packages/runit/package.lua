return {
  name    = "runit",
  version = "2.3.1",
  summary = "runit init system (runit-init, runsv, runsvdir, sv, svlogd, chpst)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/runit/runit-2.3.1.tar.gz",
  sha256  = "7d34dbc9431073fdf5a892a752c5fccb44c0479d1cedebea3df07bade5687b7b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/runit-init")
  end,
}