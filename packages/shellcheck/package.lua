return {
  name    = "shellcheck",
  version = "0.11.0",
  summary = "Static analysis tool for shell scripts",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/shellcheck/shellcheck-0.11.0.tar.gz",
  sha256  = "4bab96152ca64c4f1590d1231601ef3a7954098c2307758ce49ebcfce9509843",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/shellcheck")
  end,
}
