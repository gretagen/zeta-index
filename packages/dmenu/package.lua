return {
  name    = "dmenu",
  version = "5.4-1-x86_64",
  summary = "generic menu for X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/dmenu/dmenu-5.4-1-x86_64.pkg.tar.zst",
  sha256  = "4a458cfd846afb795765d75d8586c263b44a0079bf6ac76b8d020ab2c6dad671",
  deps    = { "bash", "glibc", "coreutils", "libX11", "libXinerama", "libXft", "freetype", "fontconfig" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/dmenu")
  end,
}
