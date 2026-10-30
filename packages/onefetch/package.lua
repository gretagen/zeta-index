return {
  name    = "onefetch",
  version = "3.1.0",
  summary = "Git repository summary on the terminal (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/onefetch/onefetch-3.1.0.tar.gz",
  sha256  = "4a9ec533437496f0a3dd74160efad9fd52e09236b23a4bb1e6b635e0d0c75b7e",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/onefetch")
  end,
}
