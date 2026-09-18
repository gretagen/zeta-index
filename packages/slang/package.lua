return {
  name    = "slang",
  version = "2.3.3",
  summary = "S-Lang programming library (terminal handling, screen management)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/slang/slang-2.3.3.tar.gz",
  sha256  = "abf803ffcf8676a00400d421cbb9e328a42b269ab7d8a1bcacf1aab4e0624a7a",
  deps    = { "glibc", "libz", "libpng", "pcre2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libslang.so.2")
  end,
}
