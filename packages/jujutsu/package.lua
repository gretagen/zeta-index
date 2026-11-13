return {
  name    = "jujutsu",
  version = "0.46.0",
  summary = "Version control system compatible with git (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/jujutsu/jujutsu-0.46.0.tar.gz",
  sha256  = "a69ae1ab8ee3c4af471cbc494d3679030efba4919eab20d85ef865a218550788",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jj")
  end,
}
