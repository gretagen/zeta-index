return {
  name    = "rtmpdump",
  version = "2.6-2-x86_64",
  summary = "a toolkit for RTMP streams",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/rtmpdump/rtmpdump-2.6-2-x86_64.pkg.tar.zst",
  sha256  = "de9e8a16607ad6e03febad6af2e2e8f7acfbe6c7dcd39679c3c6dae0c9e708a3",
  deps    = { "glibc", "gnutls", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/rtmpdump")
  end,
}
