return {
  name    = "m4",
  version = "1.4.21",
  summary = "GNU M4 macro processor (runtime dep of autoconf/automake)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/m4/m4-1.4.21.tar.gz",
  sha256  = "1e53b45e04fbe959a59aa05e5b74c5e9030a73c2031de578d11097c18400b160",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/m4 && printf 'define(x,1)x' | " .. p.install_root .. "/usr/bin/m4 | grep -q '^1$'")
  end,
}
