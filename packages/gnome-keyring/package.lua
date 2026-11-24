return {
  name    = "gnome-keyring",
  version = "48.0",
  summary = "GNOME keyring daemon: secret service, PKCS#11, PAM helper",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnome-keyring/gnome-keyring-48.0.tar.gz",
  sha256  = "64a0358397e930fb7e6c2495d622601a2255cd96e67c263da0d92753e02f756c",
  deps    = { "glibc", "glib", "gcr-3", "libgcrypt", "p11-kit", "pam", "libcap-ng" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gnome-keyring-daemon && " .. p.install_root .. "/usr/bin/gnome-keyring-daemon --version | grep -q 48 && test -f " .. p.install_root .. "/usr/lib/security/pam_gnome_keyring.so && ls " .. p.install_root .. "/usr/share/dbus-1/services/*keyring* | grep -q keyring")
  end,
}
