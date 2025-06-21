## This is a collection of remaped keybinds and plugin binds all recorded in one place
### main remap file
#### leader = "space"
    "n", "<leader>pv" -- open netrw

    "v", "J" -- move selection down
    "v", "K" -- move selection up

    "n", "<leader>tf", "PlenaryTestFile"
    "n", "J" -- join lower line with current
    "n", "<C-d>" -- jump down half a page
    "n", "<C-u>" -- jump up half a page

    "n", "n", "nzzzv")
    "n", "N", "Nzzzv")
    "n", "=ap", "ma=ap'a"

    "n", "<leader>zig" -- restart lsp

    -- greatest remap ever
    "x", "<leader>p", [["_dP]])

    -- next greatest remap ever : asbjornHaland
    { "n", "v" }, "<leader>y", [["+y]])
    "n", "<leader>Y", [["+Y]])

    { "n", "v" }, "<leader>d", "\"_d")

    "i", "<C-c>" -- <Esc>

    "n", "Q", "<nop>")
    "n", "<leader>f", function()
        require("conform").format({ bufnr = 0 })
    end)

    "n", "<C-k>", "<cmd>cnext<CR>zz")
    "n", "<C-j>", "<cmd>cprev<CR>zz")
    "n", "<leader>k", "<cmd>lnext<CR>zz")
    "n", "<leader>j", "<cmd>lprev<CR>zz")

    "n", "<leader>s" -- replace current word in entire file
    "n", "<leader>x" -- make currrent working file executable

    "n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"

    "n",
    "<leader>ea",
    "oassert.NoError(err, \"\")<Esc>F\";a"

    "n", "<leader>ef", "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"

    "n", "<leader>el", "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"

    "n", "<leader>ca" -- make it rain...

    "n", "<leader><leader>" -- shout out file, "so"

### lsp
    "n", "gd" --go to definition
    "n", "K" -- function() vim.lsp.buf.hover() end, opts)
    "n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    "n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    "n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    "n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    "n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    "i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    "n", "[d", function() vim.diagnostic.goto_next() end, opts)
    "n", "]d", function() vim.diagnostic.goto_prev() end, opts)
