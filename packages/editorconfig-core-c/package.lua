return {
  name    = "editorconfig-core-c",
  version = "0.12.11-1-x86_64",
  summary = "editorConfig core code written in C (for use by plugins supporting EditorConfig parsing)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/editorconfig-core-c/editorconfig-core-c-0.12.11-1-x86_64.pkg.tar.zst",
  sha256  = "1009686965d587e2168ced4be31796e0d367556fad607e6c13f3e02e72468768",
  deps    = { "glibc", "pcre2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libeditorconfig.so.0.12.11")
  end,
}
