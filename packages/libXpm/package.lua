return {
  name = "libXpm",
  version = "3.5.19",
  summary = "X11 pixmap (XPM) image format library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXpm/libXpm-3.5.19.tar.gz",
  sha256 = "2be30b9ace99ef1dd6fe00dbce30e7b775f13da5e8f873a97e8c147a704f57d3",
  deps = { "glibc", "libX11", "libXau", "libXdmcp", "libXext", "libXt", "libxcb" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXpm.so.4")
  end,
}
