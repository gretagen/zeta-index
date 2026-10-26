return {
  name = "bottom",
  version = "0.14.9",
  summary = "Cross platform graphical process and system monitor",
  url = "https://github.com/ClementTsang/bottom/releases/download/0.14.9/bottom_x86_64-unknown-linux-musl.tar.gz",
  sha256 = "b4bee5b193e7d3f6e090ac14f0ca15acec2e7fe4ef64988e0bfc492e16c28c9a",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/btm --version")
  end,
}
