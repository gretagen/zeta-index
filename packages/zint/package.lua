return {
  name    = "zint",
  version = "2.16.0-2-x86_64",
  summary = "barcode encoding library supporting over 50 symbologies",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zint/zint-2.16.0-2-x86_64.pkg.tar.zst",
  sha256  = "260a4368f18841cad979606102e77f64423aa06bbd4abbf4709b727a40e695e7",
  deps    = { "glibc", "libpng" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/zint")
  end,
}
