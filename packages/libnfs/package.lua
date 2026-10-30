return {
  name    = "libnfs",
  version = "7.0.2-2-x86_64",
  summary = "client library for accessing NFS shares",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libnfs/libnfs-7.0.2-2-x86_64.pkg.tar.zst",
  sha256  = "cc004b56b4e7e5cf8e8fc880cef45ff699d3ee79e9ce284e98e8fcfe183f8ad0",
  deps    = { "gnutls", "krb5" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnfs.so.17.0.2")
  end,
}
