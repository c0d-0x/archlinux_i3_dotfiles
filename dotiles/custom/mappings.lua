local M = {}

-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
--   }
-- }
-- -- M.treesitter = {
--   n = {
--     ["<A-j>"] =  {":m .+1<CR>=="}, -- move line up(n)
--     ["<A-k>"] =  {":m .-2<CR>=="}, -- move line down(n)
--   },
--   v = {
--     ["<A-j>"] =  {":m '>+1<CR>gv=gv"}, -- move line up(v)
--     ["<A-k>"] = ":m '<-2<CR>gv=gv"} -- move line down(v)
--
-- }
-- M.dap_python = {
--   plugin = true,
--   n = {
--     ["<leader>dpr"] = {
--       function ()
--         require('dap-python').test_method()
--       end
--     }
--   }
-- }
return M
