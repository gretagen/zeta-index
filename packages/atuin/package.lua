return {
  name    = "atuin",
  version = "18.24.4",
  summary = "Magical shell history (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/atuin/atuin-18.24.4.tar.gz",
  sha256  = "31841993a56f418f1c929e855f2152948143a5192ee8b3375135347bb6a69f75",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/atuin")
  end,
}
