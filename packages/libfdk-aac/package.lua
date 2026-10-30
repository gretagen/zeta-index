return {
  name    = "libfdk-aac",
  version = "3.0.0-1-x86_64",
  summary = "fraunhofer FDK AAC codec library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libfdk-aac/libfdk-aac-3.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "fad493b38fdfa190e0fea9c0521d273bddaf2e9fe70c5e3bb859b42e62071da3",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfdk-aac.so.2.0.4")
  end,
}
