return {
  name    = "python-requests-toolbelt",
  version = "1.0.0",
  summary = "Utility belt for python-requests (requests-toolbelt)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/python-requests-toolbelt/python-requests-toolbelt-1.0.0.tar.gz",
  sha256  = "941ac736a17b2786e53e34415e9399dab5888e8832172af382a9e64a7e056cf4",
  deps    = { "python", "python-requests" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("PYTHONPATH=$(echo " .. p.install_root .. "/usr/lib/python*/site-packages) python3 -c \"import requests_toolbelt\"")
  end,
}
