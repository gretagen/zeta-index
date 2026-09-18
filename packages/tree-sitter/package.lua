return {
  name    = "tree-sitter",
  version = "0.26.9",
  summary = "Incremental parsing system for programming tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tree-sitter/tree-sitter-0.26.9.tar.gz",
  sha256  = "5ef365fb705e74f71b9c46d34e2cd976fec4cdbff30b5a4a5703f1e572400637",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtree-sitter.so.0")
  end,
}
