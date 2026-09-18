return {
  name    = "fetch",
  version = "2.3.0",
  summary = "Animated 3D fetch tool for your terminal",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fetch/fetch-2.3.0.tar.gz",
  sha256  = "71c9c9998f0940e9556a41645257dde3b958313256305c406282e2c5296c4941",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fetch && test -x " .. p.install_root .. "/usr/bin/fetch.bin && test -f " .. p.install_root .. "/usr/share/fetch/config && test -f " .. p.install_root .. "/usr/share/fetch/logo.txt")
  end,
}
