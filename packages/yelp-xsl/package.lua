return {
  name    = "yelp-xsl",
  version = "49.0-1-any",
  summary = "document transformations from Yelp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/yelp-xsl/yelp-xsl-49.0-1-any.pkg.tar.zst",
  sha256  = "1083b08dcb7dfd9bfe39ea0009a56e82b0705273ed88d289b5138c02053da037",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/licenses/yelp-xsl/COPYING")
  end,
}
