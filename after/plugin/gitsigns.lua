require('gitsigns').setup {
    signs = {
        add          = { text = '+' },
        change       = { text = '~' },
        delete       = { text = '-' },
        topdelete    = { text = '_' },
        changedelete = { text = '=' },
        untracked    = { text = '|' },
    },
    -- current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 0,
        ignore_whitespace = true,
    },
    current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
}

vim.keymap.set('n', '<leader>ts', ':Gitsigns toggle_signs')
vim.keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame')
