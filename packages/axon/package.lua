return {
  name    = "axon",
  version = "0.1.0",
  summary = "Blood-red note-taking TUI built with Textual",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/axon/axon-0.1.0.tar.gz",
  sha256  = "fe9d6ae437a56a9977c475458a87bff62e6d14a3720b8c475166b6f1a38d086d",
  deps    = { "glibc", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/axon && test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/axon && test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/textual && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import axon, textual, rich; print('imports ok')\"")
  end,
}
