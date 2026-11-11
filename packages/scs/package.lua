return {
  name    = "scs",
  version = "0.2.0",
  summary = "A very cool TUI clock with a large pixel font",
  url     = "https://github.com/homu-sys/scs/releases/download/v0.2.0/scs-0.2.0-1-x86_64.pkg.tar.zst",
  sha256  = "4dfa6b81d9e003a30999febdbf586fec03c4129650d99d8db93422d9cb9f70c4",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/scs && test -f " .. p.install_root .. "/usr/share/man/man1/scs.1.gz && test -f " .. p.install_root .. "/usr/share/licenses/scs/LICENSE && " .. p.install_root .. "/usr/bin/scs --version | grep -q 'scs 0.2.0'")
  end,
}
