return {
  name    = "git",
  version = "2.50.0",
  summary = "Distributed version control system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/git/git-2.50.0.tar.gz",
  sha256  = "2dfd7d6c69a64a4035279543758d93ca39553bd87fbfbb5d7e1a92d7994b8574",
  deps    = { "glibc", "openssl", "pcre2", "expat", "libz" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/git")
  end,
}
