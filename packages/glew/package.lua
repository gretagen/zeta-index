return {
  name    = "glew",
  version = "2.3.1",
  summary = "The OpenGL Extension Wrangler Library (shared lib only)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/glew/glew-2.3.1-1-x86_64.pkg.tar.zst",
  sha256  = "981c10939903b006ffaacd6bf792b92040af0cbe1513147706772118b163c66b",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libGLEW.so.2.3")
  end,
}