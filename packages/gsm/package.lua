return {
  name    = "gsm",
  version = "1.0.24",
  summary = "GSM audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/gsm/gsm-1.0.24-1-x86_64.pkg.tar.zst",
  sha256  = "779c60b87e5b463ad2ea97e64832d5f184e84e33693ca1059948c1f43e3eba2f",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
