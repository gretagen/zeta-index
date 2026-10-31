return {
  name    = "jc",
  version = "1.26.1-1-any",
  summary = "CLI tool to convert command output to JSON (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/jc/jc-1.26.1-1-any.pkg.tar.zst",
  sha256  = "d2bcd9c5c3d3d6e8ab58e7d322c669b8bd7687fc0d83e1d2cd9de57007c8afa5",
  deps    = { "python", "python-pygments", "python-ruamel-yaml", "python-xmltodict" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/jc")
  end,
}
