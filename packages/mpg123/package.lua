return {
  name    = "mpg123",
  version = "0.49.4",
  summary = "MPEG audio decoder library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mpg123/mpg123-0.49.4.tar.gz",
  sha256  = "f5aa841ddc75421bbd76c62ddeb4fcccb9f2f4ab7c32869226346a72d960537d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmpg123.so.0")
  end,
}
