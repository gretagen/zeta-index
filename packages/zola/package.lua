return {
  name    = "zola",
  version = "0.23.6",
  summary = "Fast static site generator in a single binary (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zola/zola-0.23.6.tar.gz",
  sha256  = "05e5c279bb56be3e8be9dfb1bfb52023207b58810eb3e2c3e780fca7f3d703a2",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zola")
  end,
}
