return {
  name    = "yt-dlp",
  version = "2026.11.23",
  summary = "Feature-rich command-line audio/video downloader",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/yt-dlp/yt-dlp-2026.11.23.tar.gz",
  sha256  = "cac190d907484c7fe7cc2284935c94502814d345c96a6b5f90b78b383ec3c671",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/yt-dlp && test -f " .. p.install_root .. "/usr/share/man/man1/yt-dlp.1.gz && test -f " .. p.install_root .. "/usr/share/licenses/yt-dlp/LICENSE && " .. p.install_root .. "/usr/bin/yt-dlp --version | grep -q '2026.11.23'")
  end,
}
