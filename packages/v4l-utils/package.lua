return {
  name    = "v4l-utils",
  version = "1.32.0",
  summary = "Video4Linux utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/v4l-utils/v4l-utils-1.32.0-2-x86_64.pkg.tar.zst",
  sha256  = "0a316d96bb8c73f0f047458d2d652971137d27de826e10f386ea933860ae885d",
  deps    = { "glibc", "libjpeg-turbo", "hicolor-icon-theme", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
