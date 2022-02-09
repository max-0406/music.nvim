local api = vim.api
local buf, win
local window_id
local M = {}

M.test = function()
    print("test")
end

M.open_moc = function()
    buf = api.nvim_create_buf(false, true)

    local max_width = api.nvim_get_option("columns")
    local max_height = api.nvim_get_option("lines")

    local win_width = math.ceil(max_width * 0.6)
    local win_height = math.ceil(max_height * 0.6)

    -- set the option of floating window
    local opts = {
	relative = "editor",
	width = win_width,
	height = win_height,
	col = math.ceil((max_width-win_width) / 2),
	row = math.floor((max_height-win_height) / 2),
	style = "minimal",
	border = "rounded"
    }

    win = api.nvim_open_win(buf, true, opts)
    api.nvim_exec("terminal mocp", false)
    api.nvim_exec("normal i", false)
    api.nvim_buf_set_option(0, "bufhidden", "wipe")
end

M.close_moc = function()
    api.nvim_buf_delete(0, {force = true})
end

return M
