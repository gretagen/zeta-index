return {
  name    = "ash",
  version = "0.1.0",
  summary = "Minimal x86-64 assembly shell (NASM)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ash/ash-0.1.0.tar.gz",
  sha256  = "5a0916d4b976ce1b124d5fc82e6f435d6481cc937ebe40c32dee968d912f5a89",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ash && file " .. p.install_root .. "/usr/bin/ash | grep -q 'ELF 64-bit' && printf '/bin/echo hello-from-ash\\n' | " .. p.install_root .. "/usr/bin/ash | grep -q 'hello-from-ash'")
  end,
}
