return {
  name    = "kakoune",
  version = "2026.05.21-2-x86_64",
  summary = "Modal code editor inspired by vim (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/kakoune/kakoune-2026.05.21-2-x86_64.pkg.tar.zst",
  sha256  = "60166e8f1c0d8da3287ab81362d8f38ca6323fc83090b188d5037afc91a66a9b",
  deps    = { "glibc", "libgcc", "libstdc++" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/kak")
  end,
}
