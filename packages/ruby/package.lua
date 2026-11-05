return {
  name    = "ruby",
  version = "3.4.5",
  summary = "Ruby interpreter (build tooling + scripting)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ruby/ruby-3.4.5.tar.gz",
  sha256  = "011d3effd00fef0672589c3999d6e0f59112c560b995a199df68deb24df57dc7",
  deps    = { "glibc", "openssl", "libz", "readline", "libyaml", "libffi", "libxcrypt", "gcc", "gmp" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ruby && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/ruby -e 'print 40+2' | grep -q 42")
  end,
}
