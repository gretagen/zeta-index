return {
  name    = "magic-wormhole",
  version = "0.24.0-1-any",
  summary = "Securely transfer data between computers (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/magic-wormhole/magic-wormhole-0.24.0-1-any.pkg.tar.zst",
  sha256  = "3fd6ceb884cb18221058f73d2e6e1b012709e6acfdbcc7aa145359dd6fceaf5e",
  deps    = { "python", "python-autobahn", "python-click", "python-humanize", "python-idna", "python-iterable-io", "python-pynacl", "python-pyopenssl", "python-qrcode", "python-service-identity", "python-spake2", "python-tqdm", "python-txtorcon", "python-zipstream-ng" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wormhole")
  end,
}
