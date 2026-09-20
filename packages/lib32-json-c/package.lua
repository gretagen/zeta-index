return {
  name    = "lib32-json-c",
  version = "0.19",
  summary = "JSON implementation in C (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-json-c/lib32-json-c.pkg.tar.zst",
  sha256  = "dba23278ba7bf382f551857f0f9ba7b97dfce7771362f2ac7e05303561d61cb7",
  deps    = { "lib32-glibc", "json-c", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
