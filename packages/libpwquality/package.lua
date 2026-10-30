return {
  name    = "libpwquality",
  version = "1.4.5-7-x86_64",
  summary = "library for password quality checking and generating random passwords",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libpwquality/libpwquality-1.4.5-7-x86_64.pkg.tar.zst",
  sha256  = "1c7110f166d74ff3671b62e4242e6e21a59c483eb26bcd7b3e72d723b9d8bb2b",
  deps    = { "cracklib", "glibc", "pam" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpwquality.so.1.0.2")
  end,
}
