return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls",
               "clangd",
               "csharp_ls",
               "cssls",
               "dockerls",
               "gopls",
               "graphql",
               "html",
               "htmx",
               "tsserver",
               "marksman",
               "pylsp",
               "rust_analyzer",
               "svelte",
               "tailwindcss",
            },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({settings = {diagnostics = {globals = {"vim"}}}})
         lspconfig.clangd.setup({})
         lspconfig.csharp_ls.setup({})
         lspconfig.cssls.setup({})
         lspconfig.dockerls.setup({})
         lspconfig.gopls.setup({})
         lspconfig.graphql.setup({})
         lspconfig.html.setup({})
         lspconfig.htmx.setup({})
         lspconfig.tsserver.setup({})
         lspconfig.marksman.setup({})
         lspconfig.pylsp.setup({})
         lspconfig.rust_analyzer.setup({})
         lspconfig.svelte.setup({})
         lspconfig.tailwindcss.setup({})

         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
         vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
         vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
         vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      end,
   },
}
