return {
  name    = "superfile",
  version = "1.6.0",
  summary = "Pretty fancy and modern terminal file manager (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/superfile/superfile-1.6.0.tar.gz",
  sha256  = "c76b513418cd1cda7707c922bd11737955bc19c04a5a42f73b27022f2a125dc6",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/spf")
  end,
}
