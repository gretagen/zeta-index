return {
  name    = "yt-dlp",
  version = "2026.10.26",
  summary = "Feature-rich command-line audio/video downloader (standalone binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/yt-dlp/yt-dlp-2026.10.26.tar.gz",
  sha256  = "0f6109a4dfd4e12b86eb1465832209716df8655423d6352611f2b195a099f6cf",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yt-dlp")
  end,
}
