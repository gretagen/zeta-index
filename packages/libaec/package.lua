return {
  name    = "libaec",
  version = "1.1.7-1-x86_64",
  summary = "adaptive Entropy Coding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libaec/libaec-1.1.7-1-x86_64.pkg.tar.zst",
  sha256  = "894da633b21eb2f5920fbb6bd48458546487a4da078e7291f8f2532cecc99c8c",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libaec.so.0.1.7")
  end,
}
