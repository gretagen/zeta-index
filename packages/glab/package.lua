return {
  name    = "glab",
  version = "1.126.0",
  summary = "GitLab's official command line tool (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glab/glab-1.126.0.tar.gz",
  sha256  = "a20970fd55b79df3513604f983084b137c1f1f160cf305876e2374fb876e1f60",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glab")
  end,
}
