return {
  name    = "curl",
  version = "8.14.1",
  summary = "URL retrieval tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/curl/curl-8.14.1.tar.gz",
  sha256  = "d395c7268d946a20bc9d19e4b974924ad9e750e9d079b13d44decf6aa35e2443",
  deps    = { "glibc", "openssl", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/curl")
  end,
}
