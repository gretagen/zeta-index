return {
  name    = "unzip",
  version = "6.0",
  summary = "InfoZIP extractor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/unzip/unzip-6.0.tar.gz",
  sha256  = "dcfa98f697cbab702252615e71b4c2b04f65b268a5abf5bf48d9257d3afe9acc",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/unzip")
  end,
}
