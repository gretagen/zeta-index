return {
  name    = "dinit",
  version = "0.22.1",
  summary = "The dinit init/service manager (dinit, dinitctl, shutdown tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dinit/dinit-0.22.1.tar.gz",
  sha256  = "cd8f72ffc8fad3160181e874b4a79b1285fa4673f4ca3651b4a8905a59891feb",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/dinit && test -x " .. p.install_root .. "/usr/bin/dinitctl")
  end,
}