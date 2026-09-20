return {
  name    = "lib32-libidn2",
  version = "2.3.8",
  summary = "Free software implementation of IDNA2008, Punycode and TR46",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libidn2/lib32-libidn2.pkg.tar.zst",
  sha256  = "3936ad10e88f252a787c93be815aa3a2b6f2d05e170b00114091cf8d79febc3d",
  deps    = { "libidn2", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
