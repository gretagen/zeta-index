return {
  name    = "john",
  version = "1.9.0.jumbo1-13-x86_64",
  summary = "John the Ripper password cracker (jumbo) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/john/john-1.9.0.jumbo1-13-x86_64.pkg.tar.zst",
  sha256  = "0bb7763008f316784c4aa6367400c447bf58ca0caacf3ccc00c4486f0ee6d667",
  deps    = { "glibc", "libgcc", "libstdc++", "gmp", "libxcrypt", "libpcap", "ocl-icd", "openmpi", "openssl", "libz", "bzip2", "libgomp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/john")
  end,
}
