return {
  name    = "wayland",
  version = "1.26.0",
  summary = "Wayland display server protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wayland/wayland-1.26.0.tar.gz",
  sha256  = "1a6fe4cfcb21138c809b179a4a3494662a5941ca11f414cdc1955d579e20876d",
  deps    = { "glibc", "libffi", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/wayland-scanner --version")
  end,
}
