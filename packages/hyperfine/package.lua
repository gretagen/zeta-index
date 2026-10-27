return {
  name    = "hyperfine",
  version = "2.0.0",
  summary = "Command line benchmarking tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyperfine/hyperfine-2.0.0.tar.gz",
  sha256  = "fe68b84d12279c50cbb168fc609ff401fe806c840c1e6c1ecee5a20dbb5b6457",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hyperfine")
  end,
}
