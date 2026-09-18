return {
  name    = "opencode",
  version = "1.18.18",
  summary = "AI-powered CLI coding agent",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/opencode/opencode-1.18.18.tar.gz",
  sha256  = "8747f74fa1c7c191bfcbc5a0aab8e92d9aabafadbdf3e1030081c694efcd7657",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/opencode")
  end,
}
