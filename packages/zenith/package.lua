return {
  name    = "zenith",
  version = "0.15.1",
  summary = "Sort of like top or htop but with zoomable charts (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/zenith/zenith-0.15.1.tar.gz",
  sha256  = "ac28a3d55f35f189b329addaeeb9a227c95c7886f9f6d2c7226fe22cd2394d08",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/zenith")
  end,
}
