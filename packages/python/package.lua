return {
  name    = "python",
  version = "3.14.7",
  summary = "The Python programming language",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/python/python.pkg.tar.zst",
  sha256  = "8a350ce53aae01ae687f043b301931e411bf06333ba480b42b3b5432a0e6c79b",
  deps    = { "bzip2", "expat", "gdbm", "libffi", "libxcrypt", "openssl", "tzdata", "zstd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/python3")
  end,
}
