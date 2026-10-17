return {
  name    = "python-imageio-ffmpeg",
  version = "0.6.0",
  summary = "FFMPEG wrapper for imageio (uses system ffmpeg)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-imageio-ffmpeg/python-imageio-ffmpeg-0.6.0.tar.gz",
  sha256  = "3b49784778dddffeb82d17a96186f815a633143d76ea770fb059188e1c5b7b7a",
  deps    = { "python", "ffmpeg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import imageio_ffmpeg\"")
  end,
}
