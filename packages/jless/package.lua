return {
  name    = "jless",
  version = "0.9.0",
  summary = "JSON viewer with pager for the terminal (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/jless/jless-0.9.0.tar.gz",
  sha256  = "75aec79af70df8a0e34614aa025bb36b5d34bd737a1fb5bd8a2fba243dade1e6",
  deps    = { "libxcb", "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jless")
  end,
}
