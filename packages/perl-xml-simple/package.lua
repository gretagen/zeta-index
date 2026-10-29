return {
  name    = "perl-xml-simple",
  version = "2.25",
  summary = "Perl XML::Simple module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl-xml-simple/perl-xml-simple-2.25.tar.gz",
  sha256  = "2ca752495055e0e95c5454573aff5fa57e034a3bccfcd977f2485c0f57701b8f",
  deps    = { "perl", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PERL5LIB=$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*):$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*/x86_64*) perl -e \"use XML::Simple; print qq(XML::Simple ok\
)\"")
  end,
}
