return {
  name    = "thesh",
  version = "0.2.2",
  summary = "Custom standalone POSIX shell for Haliade OS (default shell, replaces bash)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-packages/refs/heads/main/packages/thesh/thesh-0.2.2.tar.gz",
  sha256  = "2c3169a414d8bb9cc50ccd662afdeca9cf80ddd6fc0605937f10945e4e9bee7e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/thesh && test -f " .. p.install_root .. "/etc/theshrc")
  end,
}