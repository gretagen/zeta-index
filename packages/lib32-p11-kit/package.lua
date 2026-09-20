return {
  name    = "lib32-p11-kit",
  version = "0.26.5",
  summary = "Loads and enumerates PKCS#11 modules (32-bit library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-p11-kit/lib32-p11-kit.pkg.tar.zst",
  sha256  = "e5f19d29f0f47c2b2e9072e9f1638120dabad59b8cadee8c2297d50c32eaf7f6",
  deps    = { "lib32-glibc", "lib32-libffi", "lib32-libtasn1", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
