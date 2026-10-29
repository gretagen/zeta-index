return {
  name    = "mate-icon-theme",
  version = "1.28.0",
  summary = "Icon theme for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mate-icon-theme/mate-icon-theme-1.28.0.tar.gz",
  sha256  = "304db97fdf7ccce071317bba49a8dd1e952d749ad43f6725e22dde7205f3a787",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\"")
  end,
}
