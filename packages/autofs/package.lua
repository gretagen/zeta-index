return {
  name    = "autofs",
  version = "5.2.0",
  summary = "Kernel automounter daemon and tools (automount)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/autofs/autofs-5.2.0.tar.gz",
  sha256  = "568e24eb36c37db28222a239a7fc3fc2a55b6435ce246d0e03c7599ab8059415",
  deps    = { "glibc", "systemd-libs", "libtirpc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/automount && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/sbin/automount --version | grep -q 5.2 && test -f " .. p.install_root .. "/usr/share/man/man8/automount.8")
  end,
}
