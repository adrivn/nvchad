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
map("n", "<leader>tx", function() require("trouble").toggle() end, { desc = "Open Trouble Menu" })
map("n", "<leader>tw", function() require("trouble").toggle("workspace_diagnostics") end,
  { desc = "TROUBLE: wksp diags" })
map("n", "<leader>td", function() require("trouble").toggle("document_diagnostics") end, { desc = "TROUBLE: doc diags" })
map("n", "<leader>tq", function() require("trouble").toggle("quickfix") end, { desc = "TROUBLE: quickfix" })
map("n", "<leader>tl", function() require("trouble").toggle("loclist") end, { desc = "TROUBLE: loclist" })
map("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "TROUBLE: TODOs" })
map("n", "gR", function() require("trouble").toggle("lsp_references") end, { desc = "TROUBLE: LSP References" })
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
  vim.lsp.inlay_hint.enable(vim.api.nvim_get_current_buf(), not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })
