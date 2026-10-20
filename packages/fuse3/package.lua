return {
  name    = "fuse3",
  version = "3.18.3",
  summary = "FUSE3 userspace tools (fusermount3, mount.fuse3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fuse3/fuse3-3.18.3.tar.gz",
  sha256  = "5a0956762ff4b7b9b72c3e8de107eb1846da1594b061840b3c2520293897a907",
  -- Tools subset of zeta-nemesis's fuse3 artifact: the lib/headers/pc
  -- files are already installed by libfuse3 (flatpak's dep), so this
  -- ships only what was never indexed -- fusermount3 (setuid, required
  -- by flatpak's document portal and revokefs) and mount.fuse3.
  deps    = { "glibc", "libfuse3", "fuse-common" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fusermount3 && test -x " .. p.install_root .. "/usr/bin/mount.fuse3 && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/99-fuse3.rules")
    p:run(p.install_root .. "/usr/bin/fusermount3 --version | grep -q 'fusermount3 version: 3.18.3'")
  end,
}
