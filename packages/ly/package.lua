return {
  name    = "ly",
  version = "1.0.3",
  summary = "TUI display manager (pam + xcb)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ly/ly-1.0.3.tar.gz",
  sha256  = "7f7985116a914b9261ba830997c81069864e6da93b2b978124e72af16c4c421b",
  deps    = { "glibc", "pam", "libxcb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ly")
  end,
}
