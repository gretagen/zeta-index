return {
  name = "yazi",
  version = "25.5.31",
  summary = "Blazing fast terminal file manager written in Rust",
  url = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/yazi/yazi-25.5.31-1-x86_64.pkg.tar.zst",
  sha256 = "placeholder",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/yazi --version")
  end,
}
