local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
    return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_auto_open = 1
local function open_nvim_tree()
    -- open the tree
    require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

nvimtree.setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
        -- icons = {
        --     glyphs = {
        --         folder = {
        --             -- arrow_closed = "►"
        --         }
        --     }
        -- }
    },
    filters = {
        dotfiles = true,
    },
})
