return {
  name    = "openrc",
  version = "0.63.3-1",
  summary = "OpenRC init system and service manager for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openrc/openrc-0.63.3-1.tar.gz",
  sha256  = "e6037d775901844ed7ff2189169348c5d703d78ec31e1912dd0df5021c8ff3a5",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
