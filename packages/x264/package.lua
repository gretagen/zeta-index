return {
  name    = "x264",
  version = "0.165.r3222",
  summary = "H.264/AVC encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/x264/x264-3%3A0.165.r3222.b35605a-2-x86_64.pkg.tar.zst",
  sha256  = "c448740d7be83a63d52f1573984d3f878afec7eab21c4424727c72c639922bb7",
  deps    = { "glibc", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
