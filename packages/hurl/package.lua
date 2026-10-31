return {
  name    = "hurl",
  version = "8.1.0",
  summary = "Run and test HTTP requests with plain text (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hurl/hurl-8.1.0.tar.gz",
  sha256  = "b2961f9bf8ecf01984ebc7500466ea8c5b5d7f8b50a5118aec19ba417569084f",
  deps    = { "libxml2", "libcurl", "libgcc", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hurl")
  end,
}
