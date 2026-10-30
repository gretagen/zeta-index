return {
  name    = "mjpegtools",
  version = "2.2.1-4-x86_64",
  summary = "video capture, editing, playback and compression to MPEG of MJPEG video",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mjpegtools/mjpegtools-2.2.1-4-x86_64.pkg.tar.zst",
  sha256  = "a0f262a7c6b69e0bde18ce3af9e0e4bff50afbefb98d7b0a4b1d429b38e473ff",
  deps    = { "bash", "glibc", "libdv", "libgcc", "libjpeg-turbo", "libpng", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblavfile-2.2.so.0.0.0")
  end,
}
