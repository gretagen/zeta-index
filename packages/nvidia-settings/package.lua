return {
  name    = "nvidia-settings",
  version = "615.78.08-1-x86_64",
  summary = "NVIDIA driver settings tool (nvidia-settings)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/nvidia-settings/nvidia-settings-615.78.08-1-x86_64.pkg.tar.zst",
  sha256  = "d0b7c1047761289227d19b7eeb2b9bb174fc4e6297e37f836b148bd26e08ada4",
  deps    = { "gtk3", "jansson", "libvdpau", "libXv", "nvidia-utils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvidia-settings")
  end,
}
