return {
  name    = "python-psutil",
  version = "7.2.2",
  summary = "Cross-platform process and system utilities (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-psutil/python-psutil-7.2.2.tar.gz",
  sha256  = "b6f50ee976df673cb7e335f4cabf81947de2956d4f35a2dd92526cc4ac68bdbe",
  deps    = { "python", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import psutil\"")
  end,
}
