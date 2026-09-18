return {
  name    = "alsa-lib",
  version = "1.2.14",
  summary = "ALSA sound library (libasound)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/alsa-lib/alsa-lib-1.2.14.tar.gz",
  sha256  = "d423a80a51a579af4ebce5e8082e90a1cad8e08a77fad8482ab4ebccb2b8c673",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libasound.so.2 && readelf -d " .. p.install_root .. "/usr/lib/libasound.so.2 | grep -q 'libasound.so.2'")
  end,
}
