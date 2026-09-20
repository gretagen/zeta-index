return {
  name    = "libelf",
  version = "0.196",
  summary = "Handle ELF object files and DWARF debugging information (libraries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libelf/libelf.pkg.tar.zst",
  sha256  = "0f75f1f363c60d73f563fddc82964acd01cdc5167dbe2309d5d90e833388842b",
  deps    = { "bzip2", "curl", "json-c", "xz", "zlib", "zstd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
