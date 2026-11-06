return {
  name    = "hugo",
  version = "0.169.0",
  summary = "Fast static site generator (extended, Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hugo/hugo-0.169.0.tar.gz",
  sha256  = "fff6304dd671fb7cd97460aa0dfa98b73dcd1c4db77da020c7e8d60bd1b3b816",
  deps    = { "glibc", "libstdc++", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hugo")
  end,
}
