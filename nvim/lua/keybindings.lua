-- nvimTree
vim.api.nvim_set_keymap('n', '<M-t>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- bufferline
vim.api.nvim_set_keymap('n', '<A-p>', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-n>', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
-- 
-- 跳转到定义
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- 跳转到声明
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })

-- 跳转到实现
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })

-- 显示引用
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })

-- 在当前文件内查找符号
vim.api.nvim_set_keymap("n", "gF", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { noremap = true, silent = true })

-- 在所有打开的文件中查找符号
vim.api.nvim_set_keymap("n", "gA", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", { noremap = true, silent = true })

-- 自动补全
vim.api.nvim_set_keymap("i", "<C-Space>", "<cmd>lua vim.lsp.buf.complete()<CR>", { noremap = true, silent = true })

-- 打开 LSP 诊断列表
vim.api.nvim_set_keymap("n", "<Leader>dl", "<cmd>lua vim.lsp.diagnostic.setloclist()<CR>", { noremap = true, silent = true })

-- 显示 LSP 诊断信息
vim.api.nvim_set_keymap("n", "<Leader>dn", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>dp", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })

