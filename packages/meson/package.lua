return {
  name    = "meson",
  version = "1.12.1-2",
  summary = "Fast and user friendly build system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/meson/meson-1.12.1-2.tar.gz",
  sha256  = "f5bc9a04ed7e6240007260f012caeb1b3d842ce379fde7df53775b1a9428c4bd",
  deps    = { "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) " .. p.install_root .. "/usr/bin/meson --version")
  end,
}
