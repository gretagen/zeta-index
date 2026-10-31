return {
  name    = "shfmt",
  version = "3.14.1",
  summary = "Shell script formatter (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shfmt/shfmt-3.14.1.tar.gz",
  sha256  = "ad9850b514fbeba017509f5828982677d578b2e46ffdfa1c0febc892842a4549",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/shfmt")
  end,
}
