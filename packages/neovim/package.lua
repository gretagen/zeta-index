return {
  name    = "neovim",
  version = "0.12.6",
  summary = "Vim-fork focused on extensibility and usability",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/neovim/neovim-0.12.6.tar.gz",
  sha256  = "b55700f7073737489dbf6661ee9084e732b9346161f775bd7fda6645f047504a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvim && " .. p.install_root .. "/usr/bin/nvim --version | grep -q 'v0.12.6' && test -f " .. p.install_root .. "/usr/share/nvim/runtime/syntax/lua.vim && test -f " .. p.install_root .. "/usr/share/nvim/site/parser/lua.so && test -f " .. p.install_root .. "/usr/share/nvim/site/parser/vimdoc.so && F=$(mktemp /tmp/nvimtest.XXXXXX.lua) && printf 'local x = 1\\n' > \"$F\" && OUT=$(XDG_DATA_HOME=" .. p.install_root .. "/usr/share " .. p.install_root .. "/usr/bin/nvim --headless \"$F\" -c 'lua print(vim.treesitter.get_parser(0, \"lua\") and \"PARSER_ATTACH_OK\" or \"PARSER_MISSING\")' -c 'qa!' 2>&1) && rm -f \"$F\" && echo \"$OUT\" | grep -q PARSER_ATTACH_OK")
  end,
}
