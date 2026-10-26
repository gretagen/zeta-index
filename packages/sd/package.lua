return {
  name = "sd",
  version = "1.1.0",
  summary = "Intuitive find and replace CLI (sed alternative)",
  url = "https://github.com/chmln/sd/releases/download/v1.1.0/sd-v1.1.0-x86_64-unknown-linux-gnu.tar.gz",
  sha256 = "3613eca74cd686739bb5a6d68319aa56c747e7315274d02323a2ca2b1c5d82d2",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/sd --version")
  end,
}
