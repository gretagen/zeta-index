return {
  name    = "xgamma",
  version = "1.0.8",
  summary = "Alter a monitor's gamma correction through the X server",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xgamma/xgamma-1.0.8.tar.gz",
  sha256  = "c1b47dce7d9f3ee922955fc848a58798c5128fbb7244b86aaea00a6c767b9b87",
  deps    = { "glibc", "libX11", "libXxf86vm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xgamma")
  end,
}
