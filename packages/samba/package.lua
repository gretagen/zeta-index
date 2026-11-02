return {
  name    = "samba",
  version = "4.25.1",
  summary = "Samba networking suite (SMB/CIFS)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/samba/samba-4.25.1.tar.gz",
  sha256  = "a9d47746b1789c12278046920bd439a35d9cabb8d8a9b2b5246a2810783a3935",
  deps    = { "glibc", "gnutls", "libarchive", "popt", "avahi", "libcups", "readline", "libbsd", "libcap", "libxcrypt", "ncurses", "icu", "lmdb", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/smbd && test -x " .. p.install_root .. "/usr/bin/smbclient && ls " .. p.install_root .. "/usr/lib/libsmbclient.so* | grep -q .")
  end,
}
