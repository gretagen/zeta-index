return {
  name    = "libidn",
  version = "1.44",
  summary = "Implementation of the Stringprep, Punycode and IDNA specifications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libidn/libidn.pkg.tar.zst",
  sha256  = "0941576f52b75447cea8fae1840d2a2e2970a554991512c9eb768aeffa32a9bd",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
