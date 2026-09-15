return {
  name    = "nmap",
  version = "7.991",
  summary = "Network exploration and security auditing tool (includes ncat, nping)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/nmap/nmap-7.991-1-x86_64.pkg.tar.zst",
  sha256  = "6626f578eaabda8c1e43906e1ee99ecb18b63b26f816d4e06fb7dcc65113ce41",
  deps    = { "glibc", "libssh2", "openssl", "pcre2", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nmap && test -x " .. p.install_root .. "/usr/bin/ncat && test -x " .. p.install_root .. "/usr/bin/nping")
  end,
}