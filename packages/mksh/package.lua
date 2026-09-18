return {
  name    = "mksh",
  version = "R59c",
  summary = "MirBSD Korn Shell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mksh/mksh-R59c.tar.gz",
  sha256  = "a8b02db89fba3c29d29b000aa011f1ba6e5353441a2c2d57eb1fa4e3272f056c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mksh")
  end,
}
