return {
  name    = "mdbook",
  version = "0.5.4",
  summary = "Create books from markdown files (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mdbook/mdbook-0.5.4.tar.gz",
  sha256  = "2dbdca921e02c63e2d21072c718c3f6c269dc8b338a0c9eae4ac8468d0307e37",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mdbook")
  end,
}
