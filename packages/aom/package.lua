return {
  name    = "aom",
  version = "3.15.0",
  summary = "AV1 codec library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/aom/aom-3.15.0-1-x86_64.pkg.tar.zst",
  sha256  = "12163b9d78c7691d0a9c27e877ef3dca2b82ec4f8453d5d24fd022e9b6114d3e",
  deps    = { "glibc", "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
