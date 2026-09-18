return {
  name    = "vim",
  version = "9.2.0920",
  summary = "Modal text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vim/vim-9.2.0920.tar.gz",
  sha256  = "f2a8ea522c9da20a1d02b963623ce57c0641ae4ac0fc720202106bbccb104b1c",
  deps    = { "glibc", "libtinfo", "libX11", "libXt", "libSM", "libICE", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/local/bin/vim && test -x " .. p.install_root .. "/usr/local/bin/vim")
  end,
}
