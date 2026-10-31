return {
  name    = "perl-algorithm-diff",
  version = "1.201-8-any",
  summary = "Perl diff computation module (Algorithm::Diff) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/perl-algorithm-diff/perl-algorithm-diff-1.201-8-any.pkg.tar.zst",
  sha256  = "7d37c967817446148184f6c49dd2ea39c6eba55cb6f710cafcfdd17ea759a58a",
  deps    = { "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/perl5/vendor_perl/Algorithm/Diff.pm")
  end,
}
