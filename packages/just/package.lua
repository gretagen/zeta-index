return {
  name = "just",
  version = "1.59.0",
  summary = "Just a command runner",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/just/just-1.59.0.tar.gz",
  sha256 = "a18b82bd7f5b4efec41abec13a3437e09fe6177f9e2494c32917eb9767cc6e31",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/just --version")
  end,
}
