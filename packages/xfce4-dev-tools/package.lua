return {
  name    = "xfce4-dev-tools",
  version = "4.20.0",
  summary = "Xfce development tools (xdt-autogen)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-dev-tools/xfce4-dev-tools-4.20.0.tar.gz",
  sha256  = "d4c9a56e7c410d3b6152bda4b95c630d2b4b7c9cded89a26fc96f6e6b2041ed6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xdt-autogen")
  end,
}
