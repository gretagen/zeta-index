return {
  name    = "xmessage",
  version = "1.0.7",
  summary = "Display a message or dialog in a window",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xmessage/xmessage-1.0.7.tar.gz",
  sha256  = "bf7f0c65db18c0bd3639301db838bf9bc8466e02e68f5d46f5a8b867c6e41291",
  deps    = { "glibc", "libX11", "libXaw", "libXmu", "libXt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xmessage")
  end,
}
