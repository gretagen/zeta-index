return {
  name    = "pip",
  version = "26.2.2",
  summary = "The PyPA package installer (pip)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pip/pip-26.2.2.tar.gz",
  sha256  = "7ec63f4b8980ad8a8d9ec46986006b365f2d092ac14d2b966e74ff5685fc679a",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pip && test -x " .. p.install_root .. "/usr/bin/pip3 && test -d $(echo " .. p.install_root .. "/usr/lib/python*/site-packages)/pip && test -f $(echo " .. p.install_root .. "/usr/lib/python*/site-packages)/pip-26.2.2.dist-info/RECORD && PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import pip._internal.cli.main\" && PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import importlib.metadata as m; assert m.version('pip') == '26.2.2'\" && PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) " .. p.install_root .. "/usr/bin/pip --version | grep -q \"pip 26.2.2\"")
  end,
}
