return {
  name = "starship",
  version = "1.23.0",
  summary = "Cross-shell prompt",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/starship/starship-1.23.0.tar.gz",
  sha256 = "placeholder",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/starship --version")
  end,
}
