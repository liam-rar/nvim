local telescope = require('telescope')
local actions = require('telescope.actions')

-- Load the fzf-native extension
telescope.load_extension('fzf')

local builtin = require('telescope.builtin')

-- Key mapping to find files, including hidden ones
vim.keymap.set('n', '<leader>pf', function()
    local path = vim.fn.expand("%:p:h")
    builtin.find_files({ hidden = true, cwd = path })  -- Show hidden AND current working directory
end, {})

-- Key mapping for git files or regular files based on the current directory
vim.keymap.set("n", "<C-p>", function()
    local path = vim.fn.expand("%:p:h")
    local is_git = os.execute("git -C " .. path .. " rev-parse --is-inside-work-tree") == 0
    if is_git then
        builtin.git_files({ cwd = path })
    else
        builtin.find_files()
    end
end)

-- Key mapping for grep string
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

