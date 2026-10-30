return {
  name    = "gnome-keyring",
  version = "51.1-1-x86_64",
  summary = "stores passwords and encryption keys",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-keyring/gnome-keyring-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "8e6dc27e40ebadae6569098dff9fffcad4ca9f67c211951f80a17c01485b4de4",
  deps    = { "libdconf", "gcr-4", "glib", "glibc", "libcap-ng", "libgcc", "libgcrypt", "pam", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-keyring-3")
  end,
}
