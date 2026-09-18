return {
  name    = "grep",
  version = "3.12",
  summary = "GNU grep, egrep and fgrep (with -z support for initramfs tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/grep/grep-3.12.tar.gz",
  sha256  = "849e9c5cd7f1ece9865fcb99581e52a32e477c191a3e81fcd18eefdfdfcdfe24",
  deps    = { "glibc", "pcre2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/grep && printf a | " .. p.install_root .. "/usr/bin/grep -zq a")
  end,
}
