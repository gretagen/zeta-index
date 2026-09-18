return {
  name    = "perl",
  version = "5.42.3",
  summary = "Perl interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl/perl-5.42.3.tar.xz",
  sha256  = "3664927cc8a868526d747129a855d882e4a749a90d9daba9fe85c7c8faaeead3",
  deps    = { "glibc", "libxcrypt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/perl")
  end,
}
