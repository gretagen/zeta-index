return {
  name = "libdrm",
  version = "2.4.134",
  summary = "Direct Rendering Manager userspace library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdrm/libdrm-2.4.134.tar.gz",
  sha256 = "5e0a0261ef108d06fe2b0b53d3cebcf92ee8a9697e4bcf5803fc285f3555c911",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libdrm.so.2")
  end,
}
