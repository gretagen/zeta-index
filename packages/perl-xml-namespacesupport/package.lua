return {
  name    = "perl-xml-namespacesupport",
  version = "1.12",
  summary = "Perl XML::NamespaceSupport module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl-xml-namespacesupport/perl-xml-namespacesupport-1.12.tar.gz",
  sha256  = "a362a25f3ead47da9f9aa23a2c765004ece5b4a02dc51915501fc3fcc56b6f06",
  deps    = { "perl", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PERL5LIB=$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*):$(echo " .. p.install_root .. "/usr/lib/perl5/vendor_perl/*/x86_64*) perl -e \"use XML::NamespaceSupport; print qq(XML::NamespaceSupport ok\
)\"")
  end,
}
