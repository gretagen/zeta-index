return {
  name    = "mate-netbook",
  version = "1.26.0",
  summary = "Netbook mode for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-netbook/mate-netbook-1.26.0.tar.gz",
  sha256  = "7a05d40a18dd5afd6189e4ef929ca217599bcd34c36da09a4adac835028c46df",
  deps    = { "glibc", "glib", "gtk3", "libfakekey", "mate-panel", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
