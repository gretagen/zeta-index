return {
  name    = "libopenmpt",
  version = "0.8.9",
  summary = "OpenMPT module player library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libopenmpt/libopenmpt-0.8.9-1-x86_64.pkg.tar.zst",
  sha256  = "8ffbeb4cc21dce411ea9d59280550a2e8d28dbb6d59c18bbc56a439d85bac9bb",
  deps    = { "glibc", "libgcc", "libvorbis", "libpulse", "zlib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
