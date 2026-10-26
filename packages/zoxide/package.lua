return {
  name = "zoxide",
  version = "0.10.0",
  summary = "Smarter cd command for your terminal",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zoxide/zoxide-0.10.0.tar.gz",
  sha256 = "edb68afa1d67ada798fecdc75497d2d8870e6b34eb3675bd2eedfd9b75dabb4f",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/zoxide --version")
  end,
}
