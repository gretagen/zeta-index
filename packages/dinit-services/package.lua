return {
  name    = "dinit-services",
  version = "1.0.0",
  summary = "Haliade system dinit service definitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dinit-services/dinit-services-1.0.0.tar.gz",
  sha256  = "dab27c6ef7a709b71e30c14b4ea43cb20e4ad74477b8c39c1723ef6d19590ca7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -f " .. r .. "/etc/dinit.d/sshd && test -d " .. r .. "/etc/dinit.d/boot.d && test -x " .. r .. "/etc/dinit.d/scripts/sysinit.sh && test -x " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
  end,
}
