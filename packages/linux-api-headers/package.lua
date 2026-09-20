return {
  name    = "linux-api-headers",
  version = "7.2",
  summary = "Kernel headers sanitized for use in userspace",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/linux-api-headers/linux-api-headers.pkg.tar.zst",
  sha256  = "d8d3483363e70b353ae31bbf8773df77780724eaeaa140faf4e4111bdb87588f",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
