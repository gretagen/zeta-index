return {
  name    = "genkernel",
  version = "1.0",
  summary = "Haliade OS kernel generation script",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/genkernel/genkernel-1.0.tar.gz",
  sha256  = "313d665ed9b4d7b73b2bd67919fdab2c8d2c35ce72960b1684b724a3dfd8a640",
  deps    = { "bash", "curl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/genkernel")
  end,
}
