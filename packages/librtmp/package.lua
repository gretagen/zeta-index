return {
  name    = "librtmp",
  version = "2.4",
  summary = "RTMP streaming library (rtmpdump)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/librtmp/librtmp-2.4.tar.gz",
  sha256  = "998a6a61c76d73e863246d5178e54878e63a9ad1818562d22f70523a2cfee6e0",
  deps    = { "glibc", "openssl" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/librtmp.so.1")
  end,
}
