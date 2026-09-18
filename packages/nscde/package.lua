return {
  name = "nscde",
  version = "2.3",
  summary = "Not so Common Desktop Environment: retro CDE-like desktop on FVWM",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nscde/NsCDE-2.3.tar.gz",
  sha256 = "9df6eee402b5bb0d65125038e070fee3b916d20b0650474f88f8343c14896784",
  deps = { "glibc", "fvwm3", "libX11", "libXext", "libXpm" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/nscde")
    p:run("test -f '" .. p.install_root .. "'/usr/share/NsCDE/fvwm/NsCDE.conf")
    p:run("test -x '" .. p.install_root .. "'/usr/libexec/NsCDE/bootstrap")
    p:run("grep -q '^export NSCDE_ROOT=/usr$' '" .. p.install_root .. "'/usr/bin/nscde")
  end,
}
