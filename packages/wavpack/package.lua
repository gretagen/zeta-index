return {
  name    = "wavpack",
  version = "5.9.0-1-x86_64",
  summary = "audio compression format with lossless, lossy and hybrid compression modes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wavpack/wavpack-5.9.0-1-x86_64.pkg.tar.zst",
  sha256  = "d5aed609ce3bf3d21d6939f1022ff89baac1784f905a5abb9967bd5a047d0f41",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wavpack")
  end,
}
