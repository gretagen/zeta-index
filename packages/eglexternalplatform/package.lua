return {
  name    = "eglexternalplatform",
  version = "1.2.1-1-any",
  summary = "eGL External Platform interface",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/eglexternalplatform/eglexternalplatform-1.2.1-1-any.pkg.tar.zst",
  sha256  = "70dc6d52f6941b37b859eda84bbf3664dde531803a97a5c84c739283aeb64b8f",
  deps    = { "mesa-full" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/licenses/eglexternalplatform/COPYING")
  end,
}
