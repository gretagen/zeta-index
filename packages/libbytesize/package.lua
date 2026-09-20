return {
  name    = "libbytesize",
  version = "2.12",
  summary = "A tiny library providing a C class for working with arbitrary big sizes in bytes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libbytesize/libbytesize.pkg.tar.zst",
  sha256  = "9d83943d26d0574b22398201610431a761a419394a9724fb7ac32bf2b7720a04",
  deps    = { "gmp", "mpfr", "pcre2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
