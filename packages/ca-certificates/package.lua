return {
  name    = "ca-certificates",
  version = "20240618-1-any",
  summary = "common CA certificates - default providers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ca-certificates/ca-certificates-20240618-1-any.pkg.tar.zst",
  sha256  = "982005bd5ecc998c05f561b57bb58b4457407779727e3c3d59e926d34a8b0712",
  deps    = { "ca-certificates-mozilla" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
