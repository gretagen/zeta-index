return {
  name    = "python-defusedxml",
  version = "0.7.1-8-any",
  summary = "xML bomb protection for Python stdlib modules",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-defusedxml/python-defusedxml-0.7.1-8-any.pkg.tar.zst",
  sha256  = "85d438e1905526c822746bb1b4b616b1fb8f6a965a6cccb34cb35fad348ffe1a",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/defusedxml-0.7.1.dist-info/METADATA")
  end,
}
