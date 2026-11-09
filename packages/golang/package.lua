return {
  name    = "golang",
  version = "1.27.3",
  summary = "Go compiler and standard toolchain",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/golang/golang-1.27.3.tar.gz",
  sha256  = "ecfcbae4f96e69ffa9e8c8d5875e38e52427807947051f611d53f23ed4f9a186",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/go && test -x " .. p.install_root .. "/usr/bin/gofmt && " .. p.install_root .. "/usr/bin/go version | grep -q 'go1.27' && " .. p.install_root .. "/usr/bin/go env GOROOT | grep -q '/usr/lib/go'")
  end,
}
