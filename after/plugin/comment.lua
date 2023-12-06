require('Comment').setup()


vim.keymap.set("n", "<leader>/", function() require('Comment').toggle.linewise.current() end,
    { noremap = true, silent = true })
