return {
  name    = "sdl2",
  version = "2.32.10",
  summary = "Simple DirectMedia Layer 2 (low-level multimedia library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sdl2/sdl2-2.32.10.tar.gz",
  sha256  = "4b4e1340a6bafa1966264ef2bbeed6fa6adccdb7f9674d819ef5e8246ec40ac8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libSDL2-2.0.so.0")
  end,
}
