return {
  name    = "hashcat",
  version = "8.0.0-1-x86_64",
  summary = "Advanced password recovery / hash cracking tool (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/hashcat/hashcat-8.0.0-1-x86_64.pkg.tar.zst",
  sha256  = "46c6411aca2a3a0dfd63e165c9a67bb4a081b668f299726d895470c30791320f",
  deps    = { "glibc", "ocl-icd", "xxhash", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/hashcat")
  end,
}
