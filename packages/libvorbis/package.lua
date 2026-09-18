return {
  name    = "libvorbis",
  version = "3.3.8",
  summary = "Vorbis audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libvorbis/libvorbis-3.3.8.tar.gz",
  sha256  = "4b93542539b5978d1d693d3750aa6ecc882921f506df08bef00150961c626719",
  deps    = { "glibc", "libogg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libvorbis.so.0")
  end,
}
