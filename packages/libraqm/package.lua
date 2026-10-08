return {
  name    = "libraqm",
  version = "0.11.0",
  summary = "Complex text layout for RTL scripts (HarfBuzz/FriBidi/FreeType glue)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libraqm/libraqm.pkg.tar.zst",
  sha256  = "205027d2395411e46fa442673ff24b2bd21ae464ce3ee6bc72b71f9efda60082",
  deps    = { "freetype", "fribidi", "glibc", "harfbuzz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libraqm.so.0")
  end,
}
