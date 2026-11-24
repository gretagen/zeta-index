return {
  name    = "dinit-services",
  version = "1.0.3",
  summary = "Haliade system dinit service definitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dinit-services/dinit-services-1.0.3.tar.gz",
  sha256  = "a06da00b03f22f222b48ec3fae3ec556644fb7acc36f9e47d7ec85724c9d57cf",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    -- baseline minimum set
    p:run("test -f " .. r .. "/etc/dinit.d/sshd && test -d " .. r .. "/etc/dinit.d/boot.d && test -x " .. r .. "/etc/dinit.d/scripts/sysinit.sh && test -x " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    -- boot must NOT hard-depend on shutdown-hooks (the brick vector);
    -- the boot.d symlink attaches it via the tolerant waits-for path
    p:run("! grep -q 'depends-on: shutdown-hooks' " .. r .. "/etc/dinit.d/boot")
    p:run("test -L " .. r .. "/etc/dinit.d/boot.d/shutdown-hooks")
    -- shutdown hooks slimmed to what upstream dinit/kernel don't do,
    -- with per-hook timeout isolation
    p:run("grep -q 'timeout 10' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("! grep -q 'swapoff' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("grep -q 'hwclock --systohc' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("grep -q 'seedrng' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    -- recovery graph: sysinit + a STANDALONE console getty. The getty
    -- must be a real file (not a symlink to the shared one) with no
    -- daemon waits-for: with -d, dinit does not search the default
    -- dirs, so those refs are unresolvable and the console never comes
    -- up. No shutdown-hooks either (same -d rule; recovery shutdown =
    -- upstream dinit's builtin teardown).
    p:run("test -f " .. r .. "/etc/dinit.d.recovery/boot && test -L " .. r .. "/etc/dinit.d.recovery/sysinit")
    p:run("test -f " .. r .. "/etc/dinit.d.recovery/agetty.tty1 && test ! -L " .. r .. "/etc/dinit.d.recovery/agetty.tty1")
    p:run("! grep -q '^waits-for' " .. r .. "/etc/dinit.d.recovery/agetty.tty1")
    p:run("! grep -q 'shutdown-hooks' " .. r .. "/etc/dinit.d.recovery/boot")
    p:run("! test -e " .. r .. "/etc/dinit.d.recovery/shutdown-hooks")
  end,
}
