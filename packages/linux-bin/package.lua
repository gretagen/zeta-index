return {
  name    = "linux-bin",
  version = "7.1.10",
  summary = "Haliade OS kernel 7.1.10-gen (modules included)",
  url     = "https://files.spectoria.dev/zeta-monsters/linux-bin-7.1.10-r1.tar.gz",
  sha256  = "df8718f052fcaa2ff4ee13e224d0e3f5565986eac8bc580c3751ce9bdb34445d",
  deps    = {  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/boot/vmlinuz-7.1.10-gen")
  end,
}
