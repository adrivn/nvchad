require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local builtin = require "telescope.builtin"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- more telescope
map("n", "<leader>fn", function()
  builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "[F]ind [N]eovim config files" })
-- TIP: Disable arrow keys in normal mode
map("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
map("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
map("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Projects browser
map("n", "<leader>pf", function()
  require("telescope").extensions.projects.projects()
end, { desc = "[P]roject [F]inder" })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit instance" })

-- -- Trouble
map("n", "<leader>tx", "<cmd>TroubleToggle<CR>", { desc = "Open Trouble Menu" })
map("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Open Workspace Diagnostics" })
map(
  "n",
  "<leader>td",
  "<cmd>TroubleToggle document_diagnostics<CR>",
  { desc = "<cmd>TroubleToggle document_diagnostics<CR>" }
)
map("n", "<leader>tl", "<cmd>TroubleToggle loclist<CR>", { desc = "<cmd>TroubleToggle loclist<CR>" })
map("n", "<leader>tq", "<cmd>TroubleToggle quickfix<CR>", { desc = "Open Quick Fix Menu" })
map("n", "gR", "<cmd>TroubleToggle lsp_references<CR>", { desc = "<cmd>TroubleToggle lsp_references<CR>" })
map("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "Open TODO Telescope" })
--
-- Substitute
map("n", "s", function()
  require("substitute").operator()
end, { desc = "Substitute" })
map("n", "ss", function()
  require("substitute").line()
end, { desc = "Substitute entire line" })
map("n", "S", function()
  require("substitute").eol()
end, { desc = "Substitute from current position to the end of line" })
map("x", "S", function()
  require("substitute").visual()
end, { desc = "Substitute (visual mode)" })

-- Project
map("n", "<leader>pf", "<cmd>Telescope projects<CR>", { desc = "Open projects list" })

-- Inlay hints
map("n", "<leader>ih", function()
  vim.lsp.inlay_hint.enable(vim.api.nvim_get_current_buf(), nil)
end, { desc = "Toggle inlay hints" })
