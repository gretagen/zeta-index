return {
  name    = "python-cairocffi",
  version = "1.7.1-2-any",
  summary = "cffi-based cairo bindings for Python",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-cairocffi/python-cairocffi-1.7.1-2-any.pkg.tar.zst",
  sha256  = "0821e4d69c3c623a0c9af37c2240117c37c339248a0a8992572260f0e99ca740",
  deps    = { "python-cffi", "cairo" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/cairocffi-1.7.1.dist-info/METADATA")
  end,
}
