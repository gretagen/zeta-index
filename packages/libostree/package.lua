return {
  name    = "libostree",
  version = "2025.7",
  summary = "Content-addressed object storage and versioning (ostree)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libostree/libostree-2025.7.tar.gz",
  sha256  = "35dc91e377deb0d28dd09a160b55fb9b577afd641fa85a4b40b2efd6b2595af9",
  deps    = { "glibc", "libfuse3", "libsoup3", "libcurl", "libarchive", "composefs", "avahi", "libxml2", "gpgme" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ostree")
  end,
}
