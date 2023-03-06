local lsp = require('lsp-zero').preset({
  name = 'recommended',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup_servers({'gopls', 'html-lsp'})

lsp.configure('gopls', {
    settings = {
        gopls = {
            gofumpt = true
        }
    }
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
