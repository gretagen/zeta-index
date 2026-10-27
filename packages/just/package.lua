return {
  name    = "just",
  version = "1.59.0",
  summary = "Just a command runner",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/just/just-1.59.0.tar.gz",
  sha256  = "e24cdbc7067094b503b955ba071a070f7e2b3dca3edcff372a0089a36f2809ed",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/just")
  end,
}
