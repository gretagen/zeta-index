return {
  name    = "miller",
  version = "6.22.0",
  summary = "Process CSV, JSON and other tabular data (Go binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/miller/miller-6.22.0.tar.gz",
  sha256  = "21e4cf61e6ad3fda308935caf02a61444babc499b28694806648b42c2dd21b06",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mlr")
  end,
}
