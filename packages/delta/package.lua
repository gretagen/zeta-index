return {
  name    = "delta",
  version = "0.20.1",
  summary = "Syntax highlighting pager for git and diff",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/delta/delta-0.20.1.tar.gz",
  sha256  = "42308e070785897be4f644d6dfff0f423812ec13a776c65b3a0f87aad6657be8",
  deps    = { "glibc", "libgcc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/delta")
  end,
}
