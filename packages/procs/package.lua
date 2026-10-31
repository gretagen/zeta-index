return {
  name    = "procs",
  version = "0.14.12",
  summary = "Modern replacement for ps written in Rust (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/procs/procs-0.14.12.tar.gz",
  sha256  = "3a2c4b0192b86299cc66c163505f4177b31d77339c6bc741c34eb68f0cc48717",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/procs")
  end,
}
