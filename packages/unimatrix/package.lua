return {
  name    = "unimatrix",
  version = "master",
  summary = "Matrix-style digital rain for the terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/unimatrix/unimatrix-master.tar.gz",
  sha256  = "30f84ed5d60028212486a3dfb63790e9c63d98453c908d500d583615a3f8179e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/unimatrix")
  end,
}
