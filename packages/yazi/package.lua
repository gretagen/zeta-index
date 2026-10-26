return {
  name = "yazi",
  version = "25.5.31",
  summary = "Blazing fast terminal file manager written in Rust",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/yazi/yazi-25.5.31.tar.gz",
  sha256 = "8c9eb4e621121a201125b9f8f8d457a7968f20c5fae673627150ecebabc4afda",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/yazi --version")
  end,
}
