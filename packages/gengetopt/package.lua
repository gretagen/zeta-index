return {
  name    = "gengetopt",
  version = "2.23.1",
  summary = "Command-line option parser generator (GNU gengetopt)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gengetopt/gengetopt-2.23.1.tar.gz",
  sha256  = "a69927a15587018ff1da1649788861e40113052d1596821ba5248de147889bd5",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gengetopt && " .. p.install_root .. "/usr/bin/gengetopt --version | grep -q 2.23")
  end,
}
