return {
  name    = "libseccomp",
  version = "2.6.0",
  summary = "High-level interface to the Linux seccomp syscall filter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libseccomp/libseccomp-2.6.0.tar.gz",
  sha256  = "ef203c17311cdc0ee445f00a61821b1ec35baefd42a9c59efb5b542df56a60fa",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libseccomp*.so*' | grep -q .")
  end,
}
