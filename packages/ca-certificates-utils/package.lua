return {
  name    = "ca-certificates-utils",
  version = "20240618-1-any",
  summary = "common CA certificates (utilities)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ca-certificates-utils/ca-certificates-utils-20240618-1-any.pkg.tar.zst",
  sha256  = "aabd5b2b7030716ccdd465d607e734e851fe4a01adf8293a3968fe22eb89ce9b",
  deps    = { "bash", "coreutils", "findutils", "p11-kit" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/update-ca-trust")
  end,
}
