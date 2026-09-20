return {
  name    = "mdadm",
  version = "4.6",
  summary = "A tool for managing/monitoring Linux md device arrays, also known as Software RAID",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/mdadm/mdadm.pkg.tar.zst",
  sha256  = "17b2091ae3c0644e452783ec889d90e0814fd19d17989e184fcad1c73ae1aa76",
  deps    = { "systemd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
