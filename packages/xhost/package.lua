return {
  name    = "xhost",
  version = "1.0.10",
  summary = "X server access control program",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xhost/xhost-1.0.10.tar.gz",
  sha256  = "3f9b803c49374be9ca995ca1d24d061f76b6741389f5a6762215783f17c91287",
  deps    = { "glibc", "libX11", "libXau", "libXmu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xhost")
  end,
}
