return {
  name    = "perl-xml-parser",
  version = "2.47",
  summary = "Perl XML::Parser module (expat bindings)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl-xml-parser/perl-xml-parser-2.47.tar.gz",
  sha256  = "d30a869262b387b49241ea988ddcb24bf15448c9fa6bc19188c197e824447b15",
  deps    = { "perl", "glibc", "expat" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. " -name Parser.pm | head -1)\" && PERL5LIB=$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*):$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*/x86_64*) perl -e \"use XML::Parser; print qq(XML::Parser loads ok\\n)\"")
  end,
}
