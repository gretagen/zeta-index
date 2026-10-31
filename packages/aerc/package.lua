return {
  name    = "aerc",
  version = "0.22.0-1-x86_64",
  summary = "Terminal email client (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/aerc/aerc-0.22.0-1-x86_64.pkg.tar.zst",
  sha256  = "25a5ac4bffd4bf140f461343115e19f7c07a35cc90a4ac0b691fd188d5a6cf11",
  deps    = { "glibc", "notmuch-runtime", "gawk" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/aerc")
  end,
}
