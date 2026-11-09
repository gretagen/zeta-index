return {
  name    = "sbctl",
  version = "0.18",
  summary = "Secure Boot key manager and EFI signing tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sbctl/sbctl-0.18.tar.gz",
  sha256  = "7a6d84a36006d8fc670769e921b744129edc07cb5a82be7a732e8de0df351009",
  deps    = { "glibc", "pcsc-lite" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sbctl && " .. p.install_root .. "/usr/bin/sbctl --help | grep -q enroll-keys && " .. p.install_root .. "/usr/bin/sbctl version | grep -q '0.18' && test -f " .. p.install_root .. "/usr/share/bash-completion/completions/sbctl && test -f " .. p.install_root .. "/usr/share/licenses/sbctl/LICENSE")
  end,
}
