return {
  name    = "elogind",
  version = "257.16",
  summary = "Standalone logind implementation for non-systemd systems",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/elogind/elogind-257.16.tar.gz",
  sha256  = "274c462eeb0b4f823fdfec27e0282d52be27e015b4ab197361421cf748266626",
  deps    = { "glibc", "dbus", "pam", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/elogind && test -e " .. p.install_root .. "/usr/lib/libelogind.so")
  end,
}
