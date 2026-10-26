return {
  name = "hyperfine",
  version = "2.0.0",
  summary = "Command line benchmarking tool",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyperfine/hyperfine-2.0.0.tar.gz",
  sha256 = "f8d5840637c76f745a9c6d826861c55770d40ea83b3ff5dae64ff415867a4a3b",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/hyperfine --version")
  end,
}
