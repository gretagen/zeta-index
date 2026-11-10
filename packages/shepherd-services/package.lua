return {
  name    = "shepherd-services",
  version = "1.0.0",
  summary = "Haliade system GNU Shepherd service definitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shepherd-services/shepherd-services-1.0.0.tar.gz",
  sha256  = "b814bc95f94e7ccfad8de21fbb4bd41267ef53084467fabeaea30c68bb3fa63e",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -f " .. r .. "/etc/shepherd.scm && test -f " .. r .. "/etc/shepherd.d/sshd.scm && test -f " .. r .. "/etc/shepherd.d/dbus.scm && test -x " .. r .. "/etc/shepherd/scripts/sysinit.sh && test -x " .. r .. "/etc/shepherd/scripts/shutdown.sh")
  end,
}
