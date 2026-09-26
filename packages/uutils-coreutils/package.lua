return {
  name    = "uutils-coreutils",
  version = "0.13.0",
  summary = "Rust reimplementation of the GNU coreutils (multicall binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/uutils-coreutils/uutils-coreutils-0.13.0.tar.gz",
  sha256  = "b7430d3dfda4d5edaf76f9cd8e8aef50cb1fe8e870268e0166d2afb454ccfd47",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ls && test -x " .. p.install_root .. "/usr/bin/cp && test -x " .. p.install_root .. "/usr/bin/coreutils")
  end,
}