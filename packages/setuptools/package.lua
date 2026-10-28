return {
  name    = "setuptools",
  version = "84.2.1",
  summary = "Python build system and distutils shim (setuptools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/setuptools/setuptools-84.2.1.tar.gz",
  sha256  = "bb039b33355f14287b3267b4727a21c09768514449ec04a5d57da29407d3b464",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/setuptools && test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/_distutils_hack && test -f " .. p.install_root .. "/usr/lib/python3.14/site-packages/distutils-precedence.pth && PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python3.14/site-packages) python3 -c \"import setuptools; print(setuptools.__version__)\" | grep -q 84.2.1")
  end,
}
