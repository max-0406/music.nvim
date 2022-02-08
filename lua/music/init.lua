local api = vim.api
local buf, win
local M = {}

M.openMOC = function()
    buf = api.nvim_create_buf(false, true)

    local maxWidth = api.nvim_get_option("columns")
    local maxHeight = api.nvim_get_option("lines")

    local winWidth = math.ceil(maxWidth * 0.6)
    local winHeight = math.ceil(maxHeight * 0.6)

    -- set the option of floating window
    local opts = {
	relative = "editor",
	width = winWidth,
	height = winHeight,
	col = math.ceil((maxWidth-winWidth) / 2),
	row = math.floor((maxHeight-winHeight) / 2),
	style = "minimal",
	border = "rounded"
    }

    win = api.nvim_open_win(buf, true, opts)
    api.nvim_exec('terminal mocp', false)
end

return M
