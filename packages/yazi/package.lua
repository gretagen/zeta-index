return {
  name    = "yazi",
  version = "25.5.31",
  summary = "Blazing fast terminal file manager written in Rust",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/yazi/yazi-25.5.31.tar.gz",
  sha256  = "ba79447fe3ba5459407416a4bb69482618a831805f1f3014f3b6c791e631babb",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yazi")
  end,
}
