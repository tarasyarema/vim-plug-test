local fun = require('vim-plug-test.lib.fun')
local api = vim.api

local function printHello()
    local linenr = api.nvim_win_get_cursor(0)[1]
    local curline = api.nvim_buf_get_lines(0, linenr-1, linenr, false)
    print(curline)
    fun.fun()
end

return {
    printHello = printHello
}
