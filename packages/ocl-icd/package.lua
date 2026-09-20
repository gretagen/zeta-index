return {
  name    = "ocl-icd",
  version = "2.3.5",
  summary = "OpenCL ICD loader",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/ocl-icd/ocl-icd-2.3.5-1-x86_64.pkg.tar.zst",
  sha256  = "dd5a8adc1b0f9489c2dd182bb645cdaa4b7786811b34aa4acc26cf882d1428b8",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
