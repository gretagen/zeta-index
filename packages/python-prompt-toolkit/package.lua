return {
  name    = "python-prompt-toolkit",
  version = "3.0.53",
  summary = "Python terminal prompting and rich TUI library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-prompt-toolkit/python-prompt-toolkit-3.0.53.tar.gz",
  sha256  = "05c58aa6ece0eab7fcca31b1d60f4d45dd13207f768ba250111053501dd54d56",
  deps    = { "python", "python-wcwidth" },
  archive = { strip = 1 },
  test = function(p)
    p:run("PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import prompt_toolkit, prompt_toolkit.shortcuts\"")
  end,
}
