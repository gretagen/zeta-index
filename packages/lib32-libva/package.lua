return {
  name    = "lib32-libva",
  version = "2.24.1",
  summary = "Video Acceleration (VA) API for Linux (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libva/lib32-libva.pkg.tar.zst",
  sha256  = "41953682c6011a57404bcb8b054c9199236d48dbfde6d89d164b8d5cbb4af67e",
  deps    = { "lib32-glibc", "lib32-libdrm", "libva", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
