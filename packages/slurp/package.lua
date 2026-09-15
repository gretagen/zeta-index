return {
  name    = "slurp",
  version = "1.5.0",
  summary = "Select a region in a Wayland compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/slurp/slurp-1.5.0-2-x86_64.pkg.tar.zst",
  sha256  = "1db95a9795f0e4ecfdce88aa173a50112621eb664475397216a8339631e5f0fb",
  deps    = { "glibc", "cairo", "xkbcommon", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/slurp")
  end,
}