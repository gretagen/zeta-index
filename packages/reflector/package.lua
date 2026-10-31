return {
  name    = "reflector",
  version = "2023-5-any",
  summary = "Retrieve and filter Arch Linux mirrorlist (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/reflector/reflector-2023-5-any.pkg.tar.zst",
  sha256  = "447965cc806bf623b7abd33117e8dfd8f49d14d2a361d48134f28a4c1bc93cff",
  deps    = { "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/reflector")
  end,
}
