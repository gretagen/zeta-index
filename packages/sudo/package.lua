return {
  name    = "sudo",
  version = "1.9.17p2-1",
  summary = "Execute commands as another user with limited superuser privileges",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sudo/sudo-1.9.17p2-1.tar.gz",
  sha256  = "41cd7055aadcfb6a824685c13dfb8b07079ae8d6ed184b9fe4328c6fda55be32",
  deps    = { "glibc", "pam", "libz", "openssl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sudo && test -x " .. p.install_root .. "/usr/sbin/visudo && test -u " .. p.install_root .. "/usr/bin/sudo && grep -q '^Defaults insults' " .. p.install_root .. "/etc/sudoers && grep -qE '^%wheel[[:space:]]+ALL=' " .. p.install_root .. "/etc/sudoers && grep -q 'pam_unix.so' " .. p.install_root .. "/etc/pam.d/sudo && test \"$(stat -c %a " .. p.install_root .. "/etc/sudoers)\" = 440 && sed 's|^@includedir|#@includedir|' " .. p.install_root .. "/etc/sudoers > /tmp/sudoers.stage && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/libexec/sudo " .. p.install_root .. "/usr/sbin/visudo -c -f /tmp/sudoers.stage")
  end,
}
