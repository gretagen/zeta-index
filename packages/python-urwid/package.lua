return {
  name    = "python-urwid",
  version = "4.2.5",
  summary = "Console user interface library (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-urwid/python-urwid-4.2.5.tar.gz",
  sha256  = "a4519ff5dcc99ab537573c1d3371bc65a691bf80ebb280639d17287f0a1f3882",
  deps    = { "python", "glib", "python-typing_extensions", "python-wcwidth" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import urwid\"")
  end,
}
