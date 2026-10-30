return {
  name    = "graphviz",
  version = "16.1.0-2-x86_64",
  summary = "graph visualization software",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/graphviz/graphviz-16.1.0-2-x86_64.pkg.tar.zst",
  sha256  = "d2747263344d4bab92fab6da0574d900da3d601e674ac3841f4f31ebc182fb68",
  deps    = { "libltdl", "gd", "librsvg", "ghostscript", "pango", "gts", "gsfonts" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/graphviz/R/libgv_R.so")
  end,
}
