return {
  name    = "libzen",
  version = "0.4.41-3-x86_64",
  summary = "Shared library for MediaInfo (ZenLib) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libzen/libzen-0.4.41-3-x86_64.pkg.tar.zst",
  sha256  = "aea7c2467b2580ee707b30ac6d6f3759be5c566c17699692149c950f566c8d18",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzen.so.0")
  end,
}
