return {
  name    = "perl-uri",
  version = "5.40",
  summary = "Perl URI module family (URI::Escape and friends)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl-uri/perl-uri-5.40.tar.gz",
  sha256  = "2a49580e4f5db2b588645ae9ca6552e475ba00a3f67a1ac060a45d5568de7325",
  deps    = { "perl", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. " -name Escape.pm -path '*URI*' | grep -q .")
  end,
}
