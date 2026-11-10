return {
  name    = "runit-services",
  version = "1.0.0",
  summary = "Haliade system runit service definitions and stage scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/runit-services/runit-services-1.0.0.tar.gz",
  sha256  = "1b82ee12d706efee1a58b3125888300e6ce45bf9960eacce8ebfde8057d5ffe7",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    p:run("test -x " .. r .. "/etc/runit/1 && test -x " .. r .. "/etc/runit/2 && test -x " .. r .. "/etc/runit/3 && test -x " .. r .. "/etc/service/sshd/run && test -d " .. r .. "/etc/service/agetty.tty1")
  end,
}
