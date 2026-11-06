return {
  name    = "fnm",
  version = "1.39.0",
  summary = "Fast and simple Node.js version manager (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fnm/fnm-1.39.0.tar.gz",
  sha256  = "6b8c38585bab03a758267fc06fa7175cbb92de1886e3329e1c58fd3d21cb9cf5",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fnm")
  end,
}
