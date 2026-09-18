return {
  name    = "coreutils",
  version = "9.11",
  summary = "Basic file, shell and text manipulation utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/coreutils/coreutils-9.11.tar.gz",
  sha256  = "309774e91a3a42110e0f5f83d321167142a62426cd5dc6469dcca9fe60697307",
  deps    = { "glibc", "acl", "attr", "gmp", "libcap", "openssl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ls && test -x " .. p.install_root .. "/usr/bin/cp")
  end,
}
