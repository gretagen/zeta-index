return {
  name    = "yq",
  version = "4.47.1",
  summary = "Command-line YAML/JSON/XML processor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/yq/yq.tar.zst",
  sha256  = "81daf3f12815f4e66618e66b34bcf68df6b3bc33ff8de9412cbc83f9ff4aca54",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yq")
  end,
}
