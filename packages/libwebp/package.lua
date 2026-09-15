return {
  name    = "libwebp",
  version = "1.6.0",
  summary = "WebP image codec library (shared libs, libwebp.so.7)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libwebp/libwebp-1.6.0-2-x86_64.pkg.tar.zst",
  sha256  = "3830b02d1743cabd5f646b604483478dd0de5bf1d4392615bf6c7095a6b9af0a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwebp.so.7")
  end,
}