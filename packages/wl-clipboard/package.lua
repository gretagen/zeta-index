return {
  name    = "wl-clipboard",
  version = "2.3.0",
  summary = "Wayland clipboard utilities (wl-copy and wl-paste)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wl-clipboard/wl-clipboard-2.3.0.tar.gz",
  sha256  = "c8c393e486f43053337e5c90d149fce36ee7aca948f915ce4555b091362d1a8c",
  deps    = { "glibc", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wl-copy && test -x " .. p.install_root .. "/usr/bin/wl-paste && " .. p.install_root .. "/usr/bin/wl-copy --version | grep -q '2.3.0' && (test -f " .. p.install_root .. "/usr/share/man/man1/wl-copy.1 || test -f " .. p.install_root .. "/usr/share/man/man1/wl-copy.1.gz)")
  end,
}
