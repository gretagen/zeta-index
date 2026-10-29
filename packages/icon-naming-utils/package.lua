return {
  name    = "icon-naming-utils",
  version = "0.8.90",
  summary = "Icon naming utilities and reference for icon themes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/icon-naming-utils/icon-naming-utils-0.8.90.tar.gz",
  sha256  = "e27610bfd9fb8748ac37ed4acef14e18745ceefa95fe611b584d484eccc0d6e2",
  deps    = { "perl", "glibc", "perl-xml-simple", "perl-xml-namespacesupport" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/pkgconfig/icon-naming-utils.pc && test -x " .. p.install_root .. "/usr/libexec/icon-name-mapping")
  end,
}
