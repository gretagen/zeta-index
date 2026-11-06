return {
  name    = "broot",
  version = "1.61.0",
  summary = "Interactive tree file manager (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/broot/broot-1.61.0.tar.gz",
  sha256  = "f8a7ebbead8033a5821e70d0eecf1503a1b1367448d021ec97a4435e8b0c7109",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/broot")
  end,
}
