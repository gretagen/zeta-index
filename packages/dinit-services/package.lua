return {
  name    = "dinit-services",
  version = "1.0.1",
  summary = "Haliade system dinit service definitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dinit-services/dinit-services-1.0.1.tar.gz",
  sha256  = "4330ce8556f7d7b9ce84e4512abb8e0f0d4bd00fbfc529eb53e51859b40eb41f",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    local r = p.install_root
    -- baseline minimum set
    p:run("test -f " .. r .. "/etc/dinit.d/sshd && test -d " .. r .. "/etc/dinit.d/boot.d && test -x " .. r .. "/etc/dinit.d/scripts/sysinit.sh && test -x " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    -- boot must NOT hard-depend on shutdown-hooks (the brick vector);
    -- the boot.d symlink below attaches it via the tolerant waits-for path
    p:run("! grep -q 'depends-on: shutdown-hooks' " .. r .. "/etc/dinit.d/boot")
    p:run("test -L " .. r .. "/etc/dinit.d/boot.d/shutdown-hooks")
    -- shutdown hooks slimmed to what upstream dinit/kernel don't do,
    -- with per-hook timeout isolation
    p:run("grep -q 'timeout 10' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("! grep -q 'swapoff' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("grep -q 'hwclock --systohc' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    p:run("grep -q 'seedrng' " .. r .. "/etc/dinit.d/scripts/shutdown.sh")
    -- recovery graph: minimal, self-contained, also decoupled
    p:run("test -f " .. r .. "/etc/dinit.d.recovery/boot && test -L " .. r .. "/etc/dinit.d.recovery/sysinit && test -L " .. r .. "/etc/dinit.d.recovery/agetty.tty1 && test -L " .. r .. "/etc/dinit.d.recovery/shutdown-hooks && test -L " .. r .. "/etc/dinit.d.recovery/boot.d/agetty.tty1 && test -L " .. r .. "/etc/dinit.d.recovery/boot.d/shutdown-hooks")
    p:run("! grep -q 'shutdown-hooks' " .. r .. "/etc/dinit.d.recovery/boot")
  end,
}
