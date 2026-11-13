return {
  name    = "swig",
  version = "4.5.1",
  summary = "SWIG: connect C/C++ to other languages (build tool)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/swig/swig-4.5.1.tar.gz",
  sha256  = "058c828a9848b1d1a7a11f9e146d26ed887e7b210c4d008ccfa6b8a84228e621",
  deps    = { "glibc", "libstdc++", "libgcc", "pcre2", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/swig && " .. p.install_root .. "/usr/bin/swig -version | grep -q '4.5.1' && test -d " .. p.install_root .. "/usr/share/swig/4.5.1")
  end,
}
