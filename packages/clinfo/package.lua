return {
  name    = "clinfo",
  version = "3.0.25.02.14-1-x86_64",
  summary = "OpenCL platform and device reporter (clinfo)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/clinfo/clinfo-3.0.25.02.14-1-x86_64.pkg.tar.zst",
  sha256  = "ad62ef6a7850e47b5c50ff86d1928a034750b7b3588ff59a3b41839d192d6b28",
  deps    = { "ocl-icd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/clinfo")
  end,
}
