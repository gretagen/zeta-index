return {
  name    = "libthai",
  version = "0.1.29",
  summary = "Thai language support library (libthai, libdatrie)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libthai/libthai-0.1.29.tar.gz",
  sha256  = "52b1b60aa8f08bbd9887352a20871b12950109d65b86745a09611fd53d640966",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libthai.so.0")
  end,
}
