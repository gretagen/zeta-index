return {
  name    = "xset",
  version = "1.2.6",
  summary = "User preference utility for X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xset/xset-1.2.6.tar.gz",
  sha256  = "2ee191396626a96e21d60812d3e65995df48b66316e9a0be9f0c43bd8bd2a19a",
  deps    = { "glibc", "libX11", "libXext", "libXmu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xset")
  end,
}
