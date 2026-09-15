return {
  name    = "eza",
  version = "0.23.5",
  summary = "Modern, maintained replacement for ls (exa fork)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/eza/eza-0.23.5-2-x86_64.pkg.tar.zst",
  sha256  = "a9767f7a5cbcf1d5b8d25071fa3da417c1ea3680749f6f413f204f2c2502230b",
  deps    = { "glibc", "libgit2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/eza && test -L " .. p.install_root .. "/usr/bin/exa")
  end,
}