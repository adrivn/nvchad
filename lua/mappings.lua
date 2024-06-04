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
map("n", "<leader>tw", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>td", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
map("n", "<leader>tl", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
map(
  "n",
  "<leader>tr",
  "<cmd>Trouble lsp toggle focus=false win.position=bottom<cr>",
  { desc = "LSP Definitions / references (Trouble)" }
)
map("n", "<leader>tt", "<cmd>TodoTelescope<CR>", { desc = "TROUBLE: TODOs" })
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
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(), { nil, vim.api.nvim_get_current_buf() })
end, { desc = "Toggle inlay hints" })

-- TreeSJ
map("n", "<leader>cj", function()
  require("treesj").join()
end, { desc = "[C]ode block [J]oin" })
map("n", "<leader>cs", function()
  require("treesj").split()
end, { desc = "[C]ode block [S]plit" })

-- Flash
map({ "n", "x", "o" }, "f", function()
  require("flash").jump()
end, { desc = "Flash" })
map({ "n", "x", "o" }, "F", function()
  require("flash").treesitter()
end, { desc = "Flash Treesitter" })
map("o", "r", function()
  require("flash").remote()
end, { desc = "Remote Flash" })
map({ "o", "x" }, "R", function()
  require("flash").treesitter_search()
end, { desc = "Treesitter Search" })
map("c", "<c-s>", function()
  require("flash").toggle()
end, { desc = "Toggle Flash Search" })

-- Hop
-- local hop = require "hop"
-- local directions = require("hop.hint").HintDirection
-- vim.keymap.set("", "f", function()
--   hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = false }
-- end, { remap = true })
-- vim.keymap.set("", "F", function()
--   hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = false }
-- end, { remap = true })
-- vim.keymap.set("", "t", function()
--   hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 }
-- end, { remap = true })
-- vim.keymap.set("", "T", function()
--   hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 }
-- end, { remap = true })
