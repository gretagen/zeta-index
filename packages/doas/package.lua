return {
  name    = "doas",
  version = "6.8.2",
  summary = "Execute commands as another user (portable OpenBSD doas)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/doas/doas-6.8.2.tar.gz",
  sha256  = "6313a5e26ec179d7c527bbfbcc209c519e707cc2731aef8f5f3343dbac361051",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/doas")
    p:run("grep -q 'pam_unix.so' " .. p.install_root .. "/etc/pam.d/doas")
    p:run("chmod u+s " .. p.install_root .. "/usr/bin/doas")
  end,
}
