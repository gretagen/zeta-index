return {
  name    = "wget",
  version = "1.25.0",
  summary = "Network downloader",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wget/wget-1.25.0.tar.gz",
  sha256  = "ef55503242f21e32041ae0763eaf27c85ff94f65ef4dcfb7aea869e0035ef9da",
  deps    = { "glibc", "openssl", "libpsl", "libidn2", "libunistring", "libz" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wget")
  end,
}
