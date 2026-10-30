return {
  name    = "evolution-data-server",
  version = "3.62.1-1-x86_64",
  summary = "unified contacts, tasks and calendar backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/evolution-data-server/evolution-data-server-3.62.1-1-x86_64.pkg.tar.zst",
  sha256  = "d0fa84fd5d358a30c543e34e503fd4c145050d5c60138f512f2cc3ae7e43e919",
  deps    = { "cairo", "libdconf", "glib", "glibc", "gtk3", "hicolor-icon-theme", "icu", "libjson-glib", "krb5", "libcanberra", "libgcc", "libgoa", "libgweather-4", "libical", "libldap", "libphonenumber", "libsecret", "libsoup3", "libstdc++", "libxml2", "nspr", "nss", "pango", "perl", "sqlite", "util-linux-libs", "webkit2gtk-4.1", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/evolution-data-server/addressbook-backends/libebookbackendcarddav.so")
  end,
}
