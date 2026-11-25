return {
  name    = "python-full",
  version = "1.0.0",
  summary = "Complete Python environment (metapackage): tooling, modules, yt-dlp extras",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-full/python-full-1.0.0.tar.gz",
  sha256  = "e604c63de613be0eab365b31991644bc4c645935d9ae93e2df7b7746967aa0a3",
  deps    = { "python", "pip", "setuptools", "cython", "uv", "python-base58", "python-brotli", "python-brotlicffi", "python-certifi", "python-charset-normalizer", "python-cffi", "python-cryptography", "python-gobject", "python-idna", "python-imageio", "python-imageio-ffmpeg", "python-jinja2", "python-markupsafe", "python-mutagen", "python-numpy", "python-openssl", "python-packaging", "python-pillow", "python-platformdirs", "python-prompt-toolkit", "python-pycryptodomex", "python-pycparser", "python-requests", "python-screeninfo", "python-six", "python-textual", "python-typing-extensions", "python-urllib3", "python-wcwidth", "python-websockets", "python-yaml", "python-yt-dlp-ejs", "yt-dlp", "deno", "ca-certificates" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/doc/python-full/README")
  end,
}
