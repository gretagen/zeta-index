return {
  name    = "libsigc++",
  version = "3.6.0",
  summary = "Typesafe callback framework for C++",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsigc++/libsigc++-3.6.0.tar.gz",
  sha256  = "60c3458345d9ef237d1658d1bab164342671a107ca6b2b78422b3206949dc6ad",
  deps    = { "glibc", "mm-common" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/sigc++-3.0.pc")
  end,
}
