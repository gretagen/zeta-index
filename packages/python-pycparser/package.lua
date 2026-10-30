return {
  name    = "python-pycparser",
  version = "3.12-1-any",
  summary = "c parser and AST generator written in Python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-pycparser/python-pycparser-3.12-1-any.pkg.tar.zst",
  sha256  = "dd8f407a64445e2854ddb05235a0f372918d6e84e66499741511e11b084e6ec8",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/pycparser-3.12.dist-info/METADATA")
  end,
}
