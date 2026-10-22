return {
  name    = "python-yaml",
  version = "6.0.3",
  summary = "PyYAML: YAML parser and emitter for Python 3",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-yaml/python-yaml-6.0.3.tar.gz",
  sha256  = "d26182a2622b89feaaf77f3e087bf9d039ab5ed728632abc5de3421cc8f17fa0",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c 'import yaml; assert yaml.__version__ == \"6.0.3\"; assert yaml.safe_load(\"a: 1\") == {\"a\": 1}; print(\"yaml\", yaml.__version__)'")
  end,
}
