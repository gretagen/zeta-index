return {
  name    = "python-yt-dlp-ejs",
  version = "0.8.0",
  summary = "yt-dlp JavaScript runtime support (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-yt-dlp-ejs/python-yt-dlp-ejs-0.8.0.tar.gz",
  sha256  = "86e84a665ded017d6cff74381ca231302347a67bac1fe97554dae85d08228431",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import yt_dlp_ejs\"")
  end,
}
