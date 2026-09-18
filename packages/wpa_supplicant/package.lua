return {
  name    = "wpa_supplicant",
  version = "2.12",
  summary = "WPA/WPA2/WPA3 supplicant for Wi-Fi",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wpa_supplicant/wpa_supplicant-2.12.tar.gz",
  sha256  = "aea11edf961a1b7b93b6ec70dd6a32f490ca059518a78158960622faa43b5371",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/wpa_supplicant")
  end,
}
