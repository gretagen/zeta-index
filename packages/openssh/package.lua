return {
  name    = "openssh",
  version = "10.3p1",
  summary = "OpenSSH protocol implementation for remote login, command execution and file transfer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openssh/openssh-10.3p1.tar.gz",
  sha256  = "50708ca0892531e9e074a47782e8f533954a2aadfdd30475d868be812790b34e",
  deps    = { "glibc", "openssl", "pam", "libz", "libedit", "libmd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/ssh && test -f " .. p.install_root .. "/usr/sbin/sshd")
  end,
}
