return {
  name    = "perl-regexp-common",
  version = "2024080801-4-any",
  summary = "Provide commonly requested regular expressions (Perl module) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/perl-regexp-common/perl-regexp-common-2024080801-4-any.pkg.tar.zst",
  sha256  = "6d70413bd6801506879ffa09780a341fa63b07cf5249a6b26c85a4c8d7242fac",
  deps    = { "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/perl5/vendor_perl/Regexp/Common.pm")
  end,
}
