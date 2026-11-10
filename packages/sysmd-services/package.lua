return {
  name    = "sysmd-services",
  version = "1.0.0",
  summary = "Haliade system systemd units (sysmd-services)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sysmd-services/sysmd-services-1.0.0.tar.gz",
  sha256  = "5c93cdddeb47a11572992b8ac0571406c7fb31fed0e3956022d556e9b4642083",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -f " .. r .. "/usr/lib/systemd/system/sshd.service && test -f " .. r .. "/usr/lib/systemd/system/connman.service && test -f " .. r .. "/usr/lib/systemd/system/pam_namespace.service && test -d " .. r .. "/usr/lib/systemd/system/NetworkManager.service.d")
  end,
}
