return {
  name = "yazi",
  version = "25.5.31",
  summary = "Blazing fast terminal file manager written in Rust",
  url = "https://github.com/sxyazi/yazi/releases/download/v25.5.31/yazi-x86_64-unknown-linux-musl.zip",
  sha256 = "a2fdc9c35719fa72d94820893eb2fedd93fd1c418c2cf568702643526c358f7a",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/yazi --version")
  end,
}
