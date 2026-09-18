return {
  name    = "yajl",
  version = "2.1.0",
  summary = "Yet Another JSON Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/yajl/yajl-2.1.0.tar.gz",
  sha256  = "bdcd6008889203b41e05e647a815dc1bf2198cfe207b0433cd4900ebd6bd8cc6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libyajl.so.2")
  end,
}
