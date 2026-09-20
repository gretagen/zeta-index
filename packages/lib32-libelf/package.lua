return {
  name    = "lib32-libelf",
  version = "0.196",
  summary = "Handle ELF object files and DWARF debugging information (libraries, 32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libelf/lib32-libelf.pkg.tar.zst",
  sha256  = "7d515a6e903f2b012c8279bf97a6282a3dc4eff21ead51f838e57a3c738dd629",
  deps    = { "lib32-bzip2", "lib32-curl", "lib32-glibc", "lib32-json-c", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
