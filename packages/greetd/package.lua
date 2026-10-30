return {
  name    = "greetd",
  version = "0.10.3-2-x86_64",
  summary = "generic greeter daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/greetd/greetd-0.10.3-2-x86_64.pkg.tar.zst",
  sha256  = "f057e273f12122ae05d37741c9bfb646e5c120f2349c024b8ae9e0b8cb1fcd25",
  deps    = { "glibc", "libgcc", "systemd", "greetd-agreety", "pam" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/greetd")
  end,
}
