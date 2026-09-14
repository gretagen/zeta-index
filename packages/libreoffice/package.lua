return {
  name    = "libreoffice",
  version = "26.2.5.2",
  summary = "LibreOffice office suite (single binary .deb package)",
  url     = "https://github.com/gretagen/zeta-deliverance/releases/download/libreoffice-26.2.5.2/libreoffice-26.2.5.2.deb",
  sha256  = "e38377322e9153d503f7e6505ef6a5304f41ecb24385983d257b6fe50bffe4f2",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/lib/libreoffice/program/soffice.bin "
      .. "&& test -L " .. p.install_root .. "/usr/bin/soffice "
      .. "&& test -f " .. p.install_root .. "/etc/libreoffice/psprint.conf")
  end,
}
