return {
  name    = "scs",
  version = "0.2.0",
  summary = "A very cool TUI clock with a large pixel font",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/scs/scs-0.2.0.tar.gz",
  sha256  = "c04365b6d60d90950deae117965e42a6423b5e532b4ada7c38c20eab2249192c",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/scs && test -f " .. p.install_root .. "/usr/share/man/man1/scs.1.gz && test -f " .. p.install_root .. "/usr/share/licenses/scs/LICENSE && " .. p.install_root .. "/usr/bin/scs --version | grep -q 'scs 0.2.0'")
  end,
}
