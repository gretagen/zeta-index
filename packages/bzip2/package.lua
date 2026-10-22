return {
  name    = "bzip2",
  version = "1.0.8-3",
  summary = "bzip2 compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bzip2/bzip2-1.0.8-3.tar.gz",
  sha256  = "7dd37e43ba01ac66d172a022ec5febb3030bd17ac8ac797099e711ad216ff0c6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bzip2 && test -x " .. p.install_root .. "/usr/bin/bunzip2 && test -f " .. p.install_root .. "/usr/lib/libbz2.so.1.0 && test -f " .. p.install_root .. "/usr/include/bzlib.h")
  end,
}
