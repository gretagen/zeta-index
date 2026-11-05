return {
  name    = "ruby",
  version = "3.4.5",
  summary = "Ruby interpreter (build tooling + scripting)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ruby/ruby-3.4.5.tar.gz",
  sha256  = "64e6565ea0299e3ba3854f1443019fd8ebcdf29e3ded0c027d54a9b37f9c0b24",
  deps    = { "glibc", "openssl", "zlib", "readline", "libyaml", "libffi", "libxcrypt", "gcc", "gmp" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ruby && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/ruby -e 'print 40+2' | grep -q 42")
  end,
}
