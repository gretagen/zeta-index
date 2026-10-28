return {
  name    = "perl",
  version = "5.42.3-3",
  summary = "Perl interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl/perl-5.42.3-3.tar.gz",
  sha256  = "26212e5b95193502f02cea9be443c5a51002739cd12a959151b58f2c1a8270f1",
  deps    = { "glibc", "libxcrypt", "gdbm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/perl && test -f " .. p.install_root .. "/usr/lib/perl5/5.42.3/AnyDBM_File.pm && test -f " .. p.install_root .. "/usr/lib/perl5/5.42.3/x86_64-linux-thread-multi/CORE/libperl.so && grep -qE \"^cc=.gcc.\" " .. p.install_root .. "/usr/lib/perl5/5.42.3/x86_64-linux-thread-multi/Config_heavy.pl && " .. p.install_root .. "/usr/bin/perl -e \"print 42\" | grep -q 42 && ! find " .. p.install_root .. " -maxdepth 1 -type f | grep -q .")
  end,
}
