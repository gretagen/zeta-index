return {
  name    = "python-geoip",
  version = "1.3.2",
  summary = "GeoIP bindings for Python (Python module)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-geoip/python-geoip-1.3.2.tar.gz",
  sha256  = "3e45026950085da140da92ff666400ec8a852f84066e7b28a1f21b57e867f93b",
  deps    = { "python", "geoip" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import GeoIP\"")
  end,
}
