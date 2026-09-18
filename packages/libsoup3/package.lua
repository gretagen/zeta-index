return {
  name    = "libsoup3",
  version = "3.6.6",
  summary = "HTTP client/server library for GNOME (libsoup 3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsoup3/libsoup3-3.6.6.tar.gz",
  sha256  = "f89bf6e64b83ea8841bc8180c67381c91b097c23eddf8c600375f728e7b8ce38",
  deps    = { "glibc", "libpsl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsoup-3.0.so.0")
  end,
}
