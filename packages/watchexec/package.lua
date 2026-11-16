return {
  name    = "watchexec",
  version = "2.8.0",
  summary = "Execute commands when files change (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/watchexec/watchexec-2.8.0.tar.gz",
  sha256  = "5b3067b517a02ee21920f8b74cee75985bd351ec839b03b7e4d820b7af806bcc",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/watchexec")
  end,
}
