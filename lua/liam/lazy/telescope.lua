return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files , {})
        -- search for git repo in current work tree
        vim.keymap.set("n", "<C-p>", function()
            local path = vim.fn.expand("%:p:h")
            local is_git = os.execute("git -C " .. path .. " rev-parse --is-inside-work-tree") == 0

            if is_git then
                builtin.git_files({ cwd = path }, { use_git_root = true })
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

