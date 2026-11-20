return {
  name    = "pulseplayer",
  version = "0.1.0",
  summary = "Terminal music player TUI (Textual, mpv, CAVA visualizer)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pulseplayer/pulseplayer-0.1.0.tar.gz",
  sha256  = "a5ae6a447c3188104b7b6749e373529030fdb97ae6883790652f0017994c2bbd",
  deps    = { "glibc", "python", "python-textual", "mpv" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pulseplayer && test -f " .. p.install_root .. "/usr/lib/pulseplayer/main.py && test -f " .. p.install_root .. "/usr/lib/pulseplayer/config.py && test -f " .. p.install_root .. "/usr/lib/pulseplayer/pulse.tcss && grep -q 'runpy.run_path' " .. p.install_root .. "/usr/bin/pulseplayer && PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=" .. p.install_root .. "/usr/lib/pulseplayer python3 -c \"import main; print('module ok')\"")
  end,
}
