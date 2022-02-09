local api = vim.api
local buf
local window_id
local music_dir = os.getenv("HOME") .. "/Music"

local M = {}

M.test = function()
    print("test")
end

M.open_moc = function()
    api.nvim_exec("terminal mocp -O 'MusicDir=\"" .. music_dir .. "\"'", false)
    api.nvim_exec("normal i", false)
    api.nvim_buf_set_option(0, "bufhidden", "wipe")
end

-- open floating window
M.open_fw = function()
    buf = api.nvim_create_buf(false, true)

    local max_width = api.nvim_get_option("columns")
    local max_height = api.nvim_get_option("lines")

    local win_width = math.ceil(max_width * 0.7)
    local win_height = math.ceil(max_height * 0.7)

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

    api.nvim_open_win(buf, true, opts)
    M.open_moc()
end

-- close floating window
M.close_fw = function()
    api.nvim_buf_delete(0, {force = true})
end

return M
