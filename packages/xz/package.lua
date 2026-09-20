return {
  name    = "xz",
  version = "5.8.4",
  summary = "XZ and LZMA compression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/xz/xz-5.8.4-1-x86_64.pkg.tar.zst",
  sha256  = "89b8e777c8f7a39413e1b223d4c212caec6ddd9470b3d1ea1d5161bcc6215c04",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
