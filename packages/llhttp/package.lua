return {
  name    = "llhttp",
  version = "9.3.1",
  summary = "Portable, incremental HTTP/1.1 parser (used by libgit2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/llhttp/llhttp-9.3.1.tar.gz",
  sha256  = "63667c74c23858162502cb5835b988c5bb76bd7be151da121eb607cd6da1df33",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libllhttp.so.9.3")
  end,
}
