return {
  name    = "js140",
  version = "140.17.0-1-x86_64",
  summary = "SpiderMonkey 140 JavaScript engine (GNOME gjs)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/js140/js140-140.17.0-1-x86_64.pkg.tar.zst",
  sha256  = "2cd66002cb1c98f398e66818c220ddac9a5cd4afcc97468e66271f97d2c15467",
  deps    = { "glibc", "libgcc", "libstdc++", "readline", "libz", "bash" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmozjs-140.so && test -x " .. p.install_root .. "/usr/bin/js140")
  end,
}
