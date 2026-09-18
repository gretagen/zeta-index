return {
  name    = "cmatrix",
  version = "2.0",
  summary = "C Matrix (The Matrix) terminal screen saver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cmatrix/cmatrix-2.0.tar.gz",
  sha256  = "6d35d7359163627abdc1dcab67605edab830380a6909bde75db5159d3328464d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/cmatrix")
  end,
}
