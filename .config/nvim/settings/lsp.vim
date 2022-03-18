lua << EOF
-- Language sever installer
local lsp_installer = require('nvim-lsp-installer')

lsp_installer.settings({
    ui = {
        icons = {
            -- The list icon to use for installed servers.
            server_installed = "✓",
            -- The list icon to use for servers that are pending installation.
            server_pending = "◍",
            -- The list icon to use for servers that are not installed.
            server_uninstalled = "✗",
        },
    },
})

lsp_installer.on_server_ready(function(server)
    local opts = {}
    
    -- (optional) Customize options passed to the server
    -- if server.name == "tsserver" then
    -- opts.root_dir = function() ... end
    -- end
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

-- Completions
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
        ['<C-e>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' }
    })
})

cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

EOF
