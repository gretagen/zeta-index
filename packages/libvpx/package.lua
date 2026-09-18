return {
  name    = "libvpx",
  version = "12.0.0",
  summary = "VP8/VP9 video codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libvpx/libvpx-12.0.0.tar.gz",
  sha256  = "a95aa6b7b4a20aa5ca7f82d3377836bcb6a4a295a51428a5c589e9f55f943076",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libvpx.so.12")
  end,
}
