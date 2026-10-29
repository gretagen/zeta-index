return {
  name    = "mate-polkit",
  version = "1.28.1",
  summary = "Polkit agent for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-polkit/mate-polkit-1.28.1.tar.gz",
  sha256  = "1d23c63ba1359e080e5ff9e8baee21fe2206358b629aba9526c6ff51b5a1644a",
  deps    = { "glibc", "gtk3", "polkit", "gettext" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
