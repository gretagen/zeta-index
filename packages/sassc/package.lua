return {
  name    = "sassc",
  version = "3.6.2",
  summary = "Command-line SASS compiler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sassc/sassc-3.6.2.tar.gz",
  sha256  = "8d5714b717ed4cd4cfed1294cf90471e8b215194c63c01810a5dd4ea13b963c3",
  deps    = { "glibc", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sassc && printf 'a { color: red; }' | " .. p.install_root .. "/usr/bin/sassc | grep -q 'color: red'")
  end,
}
