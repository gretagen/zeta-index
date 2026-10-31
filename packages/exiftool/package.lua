return {
  name    = "exiftool",
  version = "13.55-1-any",
  summary = "Read and write image/video metadata (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/exiftool/exiftool-13.55-1-any.pkg.tar.zst",
  sha256  = "11f2f296cdcd8c17879b478201e3e9722a8cc63dfe2bb22df86b728009ecfb6f",
  deps    = { "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/exiftool")
  end,
}
