return {
  name    = "python-cffi",
  version = "2.1.1-1-x86_64",
  summary = "foreign Function Interface for Python calling C code",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-cffi/python-cffi-2.1.1-1-x86_64.pkg.tar.zst",
  sha256  = "0d17d222658ddcfec97c86dcf6f0e948dd611f81ee8752a44030f77b5ed0e1d1",
  deps    = { "python-pycparser" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/cffi-gen-src")
  end,
}
