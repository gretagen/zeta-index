return {
  name    = "vali",
  version = "0.1.1-2-x86_64",
  summary = "a C library and code generator for Varlink",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vali/vali-0.1.1-2-x86_64.pkg.tar.zst",
  sha256  = "bdc7bca12a5da90ebb18163127706cd4d8a96b45c9bbe0eb8b210d20248b35c7",
  deps    = { "aml", "glibc", "json-c" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/vali")
  end,
}
