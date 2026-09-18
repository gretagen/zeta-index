return {
  name    = "libcap",
  version = "2.78",
  summary = "POSIX 1003.1e capabilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libcap/libcap-2.78.tar.gz",
  sha256  = "e34a48a27d8e1864e103ba73a41d125a748a071f1ef65788cb0ab85187b38d7b",
  deps    = { "glibc", "pam" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcap.so")
  end,
}
