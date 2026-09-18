return {
  name    = "zstd",
  version = "1.5.7",
  summary = "Zstandard compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zstd/zstd-1.5.7.tar.gz",
  sha256  = "cf1cf265912b00afc6a0014a460811ee0edccad1e92e24a2766379f522085252",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzstd.so.1")
  end,
}
