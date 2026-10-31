return {
  name    = "parallel",
  version = "20260922-1-any",
  summary = "GNU parallel: execute jobs in parallel (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/parallel/parallel-20260922-1-any.pkg.tar.zst",
  sha256  = "2986a4fc76a8378eaa431dce8e27e3e4ecd4594d306340407c912cf257375bd5",
  deps    = { "perl", "procps-ng" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/parallel")
  end,
}
