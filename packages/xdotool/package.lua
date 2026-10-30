return {
  name    = "xdotool",
  version = "4.20260303.1-1-x86_64",
  summary = "command-line X11 automation tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xdotool/xdotool-4.20260303.1-1-x86_64.pkg.tar.zst",
  sha256  = "e215cac06133496d8ecd3ac7e456cacffed69fc52d28485891d346f7a15edcba",
  deps    = { "glibc", "libX11", "libXinerama", "xkbcommon", "libXtst" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xdotool")
  end,
}
