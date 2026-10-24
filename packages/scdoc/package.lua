return {
  name    = "scdoc",
  version = "1.11.1",
  summary = "Small man page generator (simple document -> troff)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/scdoc/scdoc-1.11.1.tar.gz",
  sha256  = "a56f8be6acb7742f20c93c48ce90abc021f10af9d23a82ba45e01845c2ddc1a0",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/scdoc && printf 'x(1) \"X\" \"Manual\"\
\
# NAME\
x - demo\
' | " .. p.install_root .. "/usr/bin/scdoc | grep -q demo")
  end,
}
