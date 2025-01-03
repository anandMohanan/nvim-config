vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use {
        'jinh0/eyeliner.nvim',
        config = function()
            require("eyeliner").setup({
                highlight_on_key = true, -- show highlights only after keypress
                dim = true,              -- dim all other characters if set to true (recommended!)
            })
        end
    }
    use {'nyoom-engineering/oxocarbon.nvim'}

use({
    "kdheepak/lazygit.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
    },
})

    use 'wbthomason/packer.nvim'
    use {
        'hat0uma/csvview.nvim',
        config = function()
            require('csvview').setup()
        end
    }

    use {
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup({
opts = {
       enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = true -- Auto close on trailing </
} 
            })
        end
    }

    use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
}

    -- use {
    --     'Exafunction/codeium.vim',
    --     commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
    -- }
    use {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                keymaps = {
                    accept_suggestion = "<Tab>",
                    clear_suggestion = "<C-]>",
                    accept_word = "<C-j>",
                },
                ignore_filetypes = { cpp = true },
                color = {
                    suggestion_color = "#808080",
                    cterm = 244,
                },
                disable_inline_completion = false, -- disables inline completion for use with cmp
                disable_keymaps = false -- disables built in keymaps for more manual control
            })
        end,
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'norcalli/nvim-colorizer.lua'

    use("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })
    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- use 'andweeb/presence.nvim'
end)
