return {
  name    = "srt",
  version = "1.5.7",
  summary = "Secure Reliable Transport",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/srt/srt-1.5.7-1-x86_64.pkg.tar.zst",
  sha256  = "4d053e37a4ec7dc65225e2bc9dc4ba05c5c7ce654af07c7fdf2056c46e47cb37",
  deps    = { "glibc", "openssl", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
