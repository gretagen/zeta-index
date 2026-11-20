return {
  name    = "axon",
  version = "0.1.1",
  summary = "Blood-red note-taking TUI built with Textual",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/axon/axon-0.1.1.tar.gz",
  sha256  = "6b8450f12fcd5461076fa06ea37bcab435572d8ab6aac734be8d474bb362f24c",
  deps    = { "glibc", "python", "python-textual" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/axon && test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/axon && ! test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/textual && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import axon, textual; print('imports ok')\"")
  end,
}
