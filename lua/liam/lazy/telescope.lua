return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim",
    },

    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = false,                    -- false will only do exact matching
                    override_generic_sorter = true,  -- override the generic sorter
                    override_file_sorter = true,     -- override the file sorter
                    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
        require('telescope').load_extension('fzf')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', function()
        require('telescope.builtin').find_files({
                hidden = true,
                file_ignore_patterns = {"node_modules", "vmodules", "local", "cache", "steam"}
            })
        end, {})
        -- search for git repo in current work tree
        vim.keymap.set("n", "<C-p>", function()
            local path = vim.fn.expand("%:p:h")
            local is_git = os.execute("git -C " .. path .. " rev-parse --is-inside-work-tree") == 0

            if is_git then
                builtin.git_files({
                    cwd = path,
                }, { use_git_root = true })
            else
                builtin.find_files()
            end
        end)

        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
