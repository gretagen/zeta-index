return {
  name    = "mediainfo",
  version = "26.10-1-x86_64",
  summary = "Display technical/media info of video/audio files (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mediainfo/mediainfo-26.10-1-x86_64.pkg.tar.zst",
  sha256  = "ec60f06821227cc16628e5f3b720b7a794ce005f6a10a9e3c19fe1f53e358f59",
  deps    = { "glibc", "libstdc++", "libgcc", "libmediainfo", "libzen" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mediainfo")
  end,
}
