return {
  name = "hyperfine",
  version = "2.0.0",
  summary = "Command line benchmarking tool",
  url = "https://github.com/sharkdp/hyperfine/releases/download/v2.0.0/hyperfine-v2.0.0-x86_64-unknown-linux-gnu.tar.gz",
  sha256 = "ae2beda2ac99c098427e4f755244552daf20e514422889cca6d44421e2d93c87",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/hyperfine --version")
  end,
}
