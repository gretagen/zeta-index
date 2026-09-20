return {
  name    = "mpdecimal",
  version = "4.0.1",
  summary = "Package for correctly-rounded arbitrary precision decimal floating point arithmetic",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/mpdecimal/mpdecimal.pkg.tar.zst",
  sha256  = "8679f71ed9a982c91883adfaaf0f87a1b74d92d4060283180c4a105a6c7afb19",
  deps    = { "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
