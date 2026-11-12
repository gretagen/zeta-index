return {
  name    = "simde",
  version = "0.8.2",
  summary = "SIMD Everywhere (header-only)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/simde/simde-0.8.2.tar.gz",
  sha256  = "f6b8c9c7f52121b4fe339294f1c99b5d235913f0d53e057c1bc017d16f596801",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/simde/simde-common.h && test -f " .. p.install_root .. "/usr/include/simde/x86/sse2.h")
  end,
}
