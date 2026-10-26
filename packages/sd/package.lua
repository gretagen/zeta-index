return {
  name = "sd",
  version = "1.1.0",
  summary = "Intuitive find and replace CLI (sed alternative)",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sd/sd-1.1.0.tar.gz",
  sha256 = "5619d0122aceb044aa6505c3f837b7d6c84c48edf880c1e17fce4671876b1b92",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/sd --version")
  end,
}
