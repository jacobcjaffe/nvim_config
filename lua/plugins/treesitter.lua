return {
   {
     "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
      config = function()
         require("nvim-treesitter.configs").setup({
            ensure_installed = {"c", "cpp", "lua", "javascript", "html",
               "bash", "c_sharp", "css", "cuda", "elixir", "go", "gomod", "graphql", "json", "rust",
               "sql", "svelte", "typescript", "vim", "vue", },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
         })
      end
   },
}
