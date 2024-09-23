require "nvchad.mappings"

local map = vim.keymap.set

local nomap = vim.keymap.del

-- General mappings
map("n", ";", ":", { desc = "Enter command mode", nowait = true })
map("n", "<leader>sv", "<cmd> vs <CR>", { desc = "Vertical split" })
map("n", "<leader>ss", "<cmd> sp <CR>", { desc = "Horizontal split" })
map("n", "<leader>bx", "<cmd> %bd|e#|bd#<cr>|'\"<CR> <cmd> only<CR>", { desc = "Close all buffers but this one" })
map("n", "<leader><Enter>", "<cmd> noh <CR>", { desc = "Remove highlight" })
map("n", "H", "^", { desc = "Go to line start" })
map("n", "L", "$", { desc = "Go to line end" })
map("n", "<C-x>", "<cmd> x <CR>", { desc = "Save and quit" })
map("n", "<C-q>", "<cmd> q! <CR>", { desc = "Quit" })
map("n", "<leader>e", "<cmd> NvimTreeFindFile <CR>", { desc = "Nvim tree (find file)" })

-- Lspsaga mappings
map("n", "<leader>sf", "<cmd> Lspsaga finder <CR>", { desc = "Finder" })
map("n", "<leader>sp", "<cmd> Lspsaga peek_definition <CR>", { desc = "Peek definition" })
map("n", "<leader>sg", "<cmd> Lspsaga goto_definition <CR>", { desc = "Goto definition" })
map("n", "gd", "<cmd> Lspsaga goto_definition <CR>", { desc = "Goto definition" })
map("n", "<leader>sc", "<cmd> Lspsaga code_action <CR>", { desc = "Code action" })
map("n", "<leader>sh", "<cmd> Lspsaga hover_doc <CR>", { desc = "Hover doc" })
map("n", "<leader>sw", "<cmd> Lspsaga show_workspace_diagnostics <CR>", { desc = "Show workspace diagnostics" })
map("n", "<leader>sdn", "<cmd> Lspsaga diagnostic_jump_next <CR>", { desc = "Diagnostic jump next" })
map("n", "<leader>sdp", "<cmd> Lspsaga diagnostic_jump_prev <CR>", { desc = "Diagnostic jump previous" })
map("n", "<leader>sr", "<cmd> Lspsaga rename <CR>", { desc = "Rename" })
map("n", "<leader>so", "<cmd> Lspsaga outline <CR>", { desc = "Outline" })

-- Telescope mappings
map("n", "<leader>tt", function()
	require("base46").toggle_theme()
end, { desc = "Toggle theme" })
map("n", "<leader>fc", "<cmd> Telescope commands <CR>", { desc = "Telescope commands" })
map("n", "<leader>fd", "<cmd> Telescope command_history <CR>", { desc = "Telescope command history" })
map("n", '<leader>f"', "<cmd> Telescope registers <CR>", { desc = "Telescope registers" })
map("n", "<leader>ft", "<cmd> TodoTelescope <CR>", { desc = "Telescope Todos" })

-- Marks mappings
map("n", "<leader>ml", "<cmd> MarksListAll <CR>", { desc = "List all marks" })
map("n", "<leader>mx", "<cmd> delmarks! | wshada! <CR>", { desc = "Clean marks" })

-- Git mappings
map("n", "<leader>gg", "<cmd> LazyGit <CR>", { desc = "Open Lazygit" })
map("n", "<leader>gf", "<cmd> Git blame <CR>", { desc = "Git blame file" })
map("n", "<leader>gd", "<cmd> Gitsigns diffthis <CR>", { desc = "Git diff" })
map("n", "<leader>ga", function()
	require("gitsigns").blame_line { full = true }
end, { desc = "Git blame" })

-- Hop mappings
map("n", "<leader>aa", "<cmd> HopWord <CR>", { desc = "Hop to word" })
map("n", "<leader>az", "<cmd> HopVertical <CR>", { desc = "Hop to a line" })

-- Disable unwanted mappings
nomap("i", "<C-k>")
nomap("n", "<C-k>")
