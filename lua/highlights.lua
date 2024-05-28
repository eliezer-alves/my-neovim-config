vim.opt.cursorcolumn = true
vim.opt.cursorline = true 
vim.opt.termguicolors = true 
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'light'

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.cmd 'hi CursorLine guifg=NONE guibg=#212121 ctermbg=NONE gui=NONE cterm=NONE'
        vim.cmd 'hi CursorColumn guifg=NONE guibg=#111111 ctermbg=NONE gui=NONE cterm=NONE'
    end,
})
