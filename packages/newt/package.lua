return {
  name    = "newt",
  version = "0.52.25",
  summary = "Library for text mode user interfaces (libnewt)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/newt/newt-0.52.25.tar.gz",
  sha256  = "f47b584db1c78d22f6df1df395248aaa62f444ee10a0926d0165caa2e6bf219c",
  deps    = { "glibc", "slang", "libtinfo", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnewt.so.0.52")
  end,
}
