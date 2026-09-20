return {
  name    = "db5.3",
  version = "5.3.28",
  summary = "Berkeley DB library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/db5.3/db5.3-5.3.28-7-x86_64.pkg.tar.zst",
  sha256  = "abac3474e766fa8a36fcae945f5e8c8e818665fc41a56daff92db81cd176d389",
  deps    = { "glibc", "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
