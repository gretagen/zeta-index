return {
  name = "hello",
  version = "1.0",
  summary = "A tiny demonstration package for Zeta",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hello/hello-1.0.tar.gz",
  sha256 = "731887527d1a72c57d1e64bad85cc341a4285354e773b2cd277420b744df2943",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/hello")
  end,
}
