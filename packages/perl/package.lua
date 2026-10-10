return {
  name    = "perl",
  version = "5.42.3-2",
  summary = "Perl interpreter",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/perl/perl-5.42.3-2.tar.xz",
  sha256  = "7c6387c77037ae150b6a73cf5bedf891d82ad2a2814be446b9bf8b5b174498b5",
  deps    = { "glibc", "libxcrypt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/perl")
    p:run("test -f " .. p.install_root .. "/usr/lib/perl5/5.42.3/AnyDBM_File.pm && test -f " .. p.install_root .. "/usr/lib/perl5/5.42.3/x86_64-linux-thread-multi/CORE/libperl.so")
    -- tripwire: payload must have NO files at the install root (a previous
    -- build dumped 962 Pod::Man man pages (*.0) at the archive top level,
    -- which installed straight into /). Only the usr/ tree is allowed.
    p:run("! find " .. p.install_root .. " -maxdepth 1 -type f | grep -q .")
  end,
}