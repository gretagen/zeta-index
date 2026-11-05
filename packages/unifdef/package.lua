return {
  name    = "unifdef",
  version = "2.12",
  summary = "#ifdef preprocessor stripper (build tooling)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/unifdef/unifdef-2.12.tar.gz",
  sha256  = "877617157f01829602f07bded6887bb7ac85b1c06313c4a1be090f9df99d5134",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/unifdef && " .. p.install_root .. "/usr/bin/unifdef -V 2>&1 | grep -q 2.12")
  end,
}
