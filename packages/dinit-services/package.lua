return {
  name    = "dinit-services",
  version = "1.0.2",
  summary = "Haliade system dinit service definitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dinit-services/dinit-services-1.0.2.tar.gz",
  sha256  = "8ec392720c6c537158f99f66de31845cc54bad81e4a16583443a1d05fb47954c",
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
    -- recovery graph: sysinit + console getty ONLY. No shutdown-hooks:
    -- with -d, dinit does not search the default dirs, so the hook's
    -- before: references would be unresolvable and crash recovery.
    p:run("test -f " .. r .. "/etc/dinit.d.recovery/boot && test -L " .. r .. "/etc/dinit.d.recovery/sysinit && test -L " .. r .. "/etc/dinit.d.recovery/agetty.tty1 && test -L " .. r .. "/etc/dinit.d.recovery/boot.d/agetty.tty1")
    p:run("! test -e " .. r .. "/etc/dinit.d.recovery/shutdown-hooks")
    p:run("! grep -q 'shutdown-hooks' " .. r .. "/etc/dinit.d.recovery/boot")
  end,
}
