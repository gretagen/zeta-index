return {
  name    = "libscfg",
  version = "0.2.0-1-x86_64",
  summary = "a C library for scfg",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libscfg/libscfg-0.2.0-1-x86_64.pkg.tar.zst",
  sha256  = "c6011bb6cf785a3ba13db476f0e5836209f3016f32432f8f257e601f6f6fb53f",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libscfg.so.0.2.0")
  end,
}
