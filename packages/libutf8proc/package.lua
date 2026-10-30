return {
  name    = "libutf8proc",
  version = "2.12.0-1-x86_64",
  summary = "c library for processing UTF-8 encoded Unicode strings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libutf8proc/libutf8proc-2.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "297205aba0d093921dbfbc70b9ecf7359838f0c3418b6265af960aed12bfd072",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libutf8proc.so.3.3.0")
  end,
}
