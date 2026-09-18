return {
  name    = "zip",
  version = "3.0",
  summary = "InfoZIP archiver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zip/zip-3.0.tar.gz",
  sha256  = "f4e05282b6417dd9a72566c58871fe9d8c9ffcc37eb5e6a700cbe74b61498b1a",
  deps    = { "glibc", "bzip2", "libz" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zip")
  end,
}
