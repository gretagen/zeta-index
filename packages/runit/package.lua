return {
  name    = "runit",
  version = "2.3.1",
  summary = "The runit init system (init, runsvdir service supervision)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/runit/runit-2.3.1.tar.gz",
  sha256  = "3ad992754868319b4c790bdd0062610c6e4bf4b7b8a3305526b55de55c2e701e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/runit-init")
  end,
}