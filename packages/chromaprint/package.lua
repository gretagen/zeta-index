return {
  name    = "chromaprint",
  version = "1.6.2-1-x86_64",
  summary = "library for extracting fingerprints from any audio source",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/chromaprint/chromaprint-1.6.2-1-x86_64.pkg.tar.zst",
  sha256  = "2e7dc45583195b480cfc53c2f21ccff65b8af136a14432c457fe0a0403b87f80",
  deps    = { "glibc", "libgcc", "libstdc++", "ffmpeg" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libchromaprint.so.1.6.2")
  end,
}
