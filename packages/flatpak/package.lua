return {
  name    = "flatpak",
  version = "1.18.0-2",
  summary = "Linux application sandboxing and distribution framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/flatpak/flatpak-1.18.0-2.tar.gz",
  sha256  = "0808f4ef5eca7d7c1a5e4515bf56b4eb98f68e3b2a11c038c0f8611f6b326a02",
  deps    = { "glibc", "libostree", "libdconf", "libappstream", "libcurl", "libxml2", "libarchive", "libseccomp", "libfuse3", "libjson-glib", "gpgme", "gnupg", "glib", "libcap", "fuse3", "curl", "libzstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/flatpak && test -x " .. p.install_root .. "/usr/libexec/flatpak-portal && test -x " .. p.install_root .. "/usr/libexec/flatpak-session-helper && test -f " .. p.install_root .. "/usr/share/dbus-1/services/org.freedesktop.portal.Flatpak.service && test -f " .. p.install_root .. "/usr/share/dbus-1/services/org.freedesktop.Flatpak.service && grep -qF '[D-BUS Service]' " .. p.install_root .. "/usr/share/dbus-1/services/org.freedesktop.Flatpak.service")
  end,
}
