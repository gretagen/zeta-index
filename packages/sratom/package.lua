return {
  name    = "sratom",
  version = "0.6.22-1-x86_64",
  summary = "an LV2 Atom RDF serialisation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sratom/sratom-0.6.22-1-x86_64.pkg.tar.zst",
  sha256  = "d1e9488f3c1b8a05d3061bf6d798eea6edba8ad8918b44e4289df2aa09be1a5a",
  deps    = { "glibc", "serd", "sord", "lv2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsratom-0.so.0.6.22")
  end,
}
