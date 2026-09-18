return {
  name    = "libsecret",
  version = "0.21.8.2-1-x86_64",
  summary = "Secret service library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libsecret/libsecret-0.21.8.2-1-x86_64.pkg.tar.zst",
  sha256  = "311a982a109a3814ebc8f467215f9c92660b85833e1c65b6da16ba21d6f406ad",
  deps    = { "glib", "libgcrypt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
