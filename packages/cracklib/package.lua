return {
  name    = "cracklib",
  version = "2.10.3-1-x86_64",
  summary = "password Checking Library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/cracklib/cracklib-2.10.3-1-x86_64.pkg.tar.zst",
  sha256  = "443746c71feea1357ffb3cae3b1d7dc76ca214d7f0ea45064c280da1002bb35f",
  deps    = { "glibc", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcrack.so.2.9.0")
  end,
}
