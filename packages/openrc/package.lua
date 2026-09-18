return {
  name    = "openrc",
  version = "0.63.3",
  summary = "OpenRC init system and service manager for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openrc/openrc-0.63.3.tar.gz",
  sha256  = "00c73a2a1b1fd37d03c8fe4f1aedfb10bafbe5631c36ee84390a46d7f367ae51",
  deps    = { "glibc", "pam", "libcap", "libcap-ng", "audit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/openrc && test -x " .. p.install_root .. "/sbin/openrc-init")
  end,
}
