return {
  name    = "python-pillow",
  version = "13.0.0",
  summary = "Python Imaging Library (Pillow)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-pillow/python-pillow-13.0.0.tar.gz",
  sha256  = "947025cf8bf4af4ce7dff8cb6130b7ff6b944dd96d320bee4369386d20ef448f",
  deps    = { "python", "glibc", "libjpeg-turbo", "libpng", "freetype", "libwebp", "lcms2", "libtiff", "openjpeg2", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"from PIL import Image, features; assert features.check('jpg'), 'jpeg support missing'\"")
  end,
}
