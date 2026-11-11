return {
  name    = "ca-certificates",
  version = "2026-11-05",
  summary = "Mozilla CA root certificate bundle for TLS verification",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ca-certificates/ca-certificates-2026-11-05.tar.gz",
  sha256  = "579ed798ebcd9ef4f53eed1fde8fdcb2ed57db48f59ba71fc64a9ec4caa95e53",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/etc/ssl/certs/ca-certificates.crt && test \"$(grep -c 'BEGIN CERTIFICATE' " .. p.install_root .. "/etc/ssl/certs/ca-certificates.crt)\" -ge 100 && grep -q 'Certificate data from Mozilla' " .. p.install_root .. "/etc/ssl/certs/ca-certificates.crt && test -f " .. p.install_root .. "/etc/ssl/cert.pem")
  end,
}
