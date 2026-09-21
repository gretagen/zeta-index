return {
  name    = "libxrandr",
  version = "1.5.5",
  summary = "X11 RandR extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxrandr/libxrandr.pkg.tar.zst",
  sha256  = "49d3a3596311477f8ad2e1735dae612013118802822f21ce22886f65103dd899",
  deps    = { "glibc", "libX11", "libXext", "libXrender" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
