return {
  name    = "graphviz",
  version = "16.1.0-2-x86_64",
  summary = "Graph visualization software (dot) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/graphviz/graphviz-16.1.0-2-x86_64.pkg.tar.zst",
  sha256  = "d2747263344d4bab92fab6da0574d900da3d601e674ac3841f4f31ebc182fb68",
  deps    = { "glibc", "gd", "ghostscript", "gsfonts", "gts", "libltdl", "librsvg", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dot")
  end,
}
