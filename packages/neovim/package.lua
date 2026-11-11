return {
  name    = "neovim",
  version = "0.12.6",
  summary = "Vim-fork focused on extensibility and usability",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/neovim/neovim-0.12.6.tar.gz",
  sha256  = "74a0f15165f49c0018db7eb2208d024edd59779be272ef6bcff5b81761ba324d",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/nvim && " .. p.install_root .. "/usr/bin/nvim --version | grep -q 'v0.12.6' && test -f " .. p.install_root .. "/usr/share/nvim/runtime/syntax/lua.vim && test -f " .. p.install_root .. "/usr/share/nvim/site/parser/lua.so && test -f " .. p.install_root .. "/usr/share/nvim/site/parser/vimdoc.so && F=$(mktemp /tmp/nvimtest.XXXXXX.lua) && printf 'local x = 1\\n' > \"$F\" && " .. p.install_root .. "/usr/bin/nvim --headless \"$F\" -c 'lua assert(vim.treesitter.get_parser(0, \"lua\"), \"no lua parser\")' -c 'qa!' && rm -f \"$F\"")
  end,
}
