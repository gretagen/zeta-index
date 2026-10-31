return {
  name    = "dnssec-anchors",
  version = "20250524-1-any",
  summary = "DNSSEC root trust anchors (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/dnssec-anchors/dnssec-anchors-20250524-1-any.pkg.tar.zst",
  sha256  = "98e7fb7721d3aad4d99e9a77d5219cee8b49351ac7bf32981fac99de04c2abaf",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/etc/trusted-key.key")
  end,
}
