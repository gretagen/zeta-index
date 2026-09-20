return {
  name    = "nano",
  version = "9.2",
  summary = "Simple text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/nano/nano-9.2-1-x86_64.pkg.tar.zst",
  sha256  = "c63e2efc4c8d1458dbc04152db73a570a609bed245b490c161f0fc4df6baad53",
  deps    = { "glibc", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nano")
  end,
}
