return {
  name    = "bandwhich",
  version = "0.23.1",
  summary = "Terminal bandwidth utilization tool (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bandwhich/bandwhich-0.23.1.tar.gz",
  sha256  = "a221eab0c9e64b93ce097554668b8ce16e3edda6475a76517c3f41033382d9b8",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bandwhich")
  end,
}
