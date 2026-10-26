return {
  name = "dust",
  version = "1.2.6",
  summary = "More intuitive version of du in Rust",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dust/dust-1.2.6.tar.gz",
  sha256 = "f0f1cdb0bf6fe40a2a7dc475b601cc947ae5ca9a22cfb0457cc9794e7eabc802",
  deps = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("'" .. p.install_root .. "'/usr/bin/dust --version")
  end,
}
