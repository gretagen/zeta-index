return {
  name = "xauth",
  version = "1.1.5",
  summary = "X authority file utility (X11)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xauth/xauth-1.1.5.tar.gz",
  sha256 = "8770200451a97cd79dc95ddc347413e773243afc33b8c8ad8e3240081b6ffef8",
  deps = { "glibc", "libX11", "libXau", "libXext", "libXmu" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x '" .. p.install_root .. "'/usr/bin/xauth")
  end,
}
