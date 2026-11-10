return {
  name    = "lxc",
  version = "6.0.6",
  summary = "Linux Containers toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxc/lxc-6.0.6.tar.gz",
  sha256  = "944f83f450dbc244776de6ff3e71f9fd35c7bf8f04829c56ddb77d0d4b7c1086",
  deps    = { "glibc", "gcc", "dbus", "libseccomp", "libcap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxc-start && test -x " .. p.install_root .. "/usr/bin/lxc-info && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/lxc-info --version | grep -q 6.0 && test -f " .. p.install_root .. "/usr/lib/liblxc.so.1")
  end,
}
