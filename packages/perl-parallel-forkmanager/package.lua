return {
  name    = "perl-parallel-forkmanager",
  version = "2.04-2-any",
  summary = "Simple parallel processing fork manager (Perl module) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/perl-parallel-forkmanager/perl-parallel-forkmanager-2.04-2-any.pkg.tar.zst",
  sha256  = "edaba16dc8999c65eea2324217d7837eb3567de2ba639511bb603af784e2caec",
  deps    = { "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/perl5/vendor_perl/Parallel/ForkManager.pm")
  end,
}
