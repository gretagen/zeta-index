return {
  name    = "python-typing_extensions",
  version = "4.16.0-1-any",
  summary = "backported and Experimental Type Hints for Python 3.8+",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-typing_extensions/python-typing_extensions-4.16.0-1-any.pkg.tar.zst",
  sha256  = "842e53664795f35dc62cd0b3b5a4c8ee1261be780e8c20c064d83ee3d7330bcd",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/__pycache__/typing_extensions.cpython-314.opt-1.pyc")
  end,
}
