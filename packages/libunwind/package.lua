return {
  name    = "libunwind",
  version = "1.8.3",
  summary = "Determine and manipulate the call-chain of a program",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libunwind/libunwind.pkg.tar.zst",
  sha256  = "7a3106a1ec551d3047bfad524b3a7078058234047292a8fdf8cb5cb481bda5af",
  deps    = { "xz", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
