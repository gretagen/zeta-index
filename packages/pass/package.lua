return {
  name    = "pass",
  version = "1.7.4-7-any",
  summary = "Standard unix password manager (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pass/pass-1.7.4-7-any.pkg.tar.zst",
  sha256  = "24120fa093583d2854e17c72421acf7406398b4e9070885659d9b48ff5ab8931",
  deps    = { "bash", "gnupg", "tree" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pass")
  end,
}
