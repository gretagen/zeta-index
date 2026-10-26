return {
  name = "bottom",
  version = "0.14.9",
  summary = "Cross platform graphical process and system monitor",
  url = "https://github.com/ClementTsang/bottom/releases/download/0.14.9/bottom_x86_64-unknown-linux-gnu.tar.gz",
  sha256 = "e0c325829e8bdcea25a8a7651da05dbb6f1fc109ac5d2f0187867d3d5d9c0df8",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/btm --version")
  end,
}
