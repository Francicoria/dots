-- Completely stole from nuxsh, props to him for everything in this file!
-- His personal site: <https://nuxsh.is-a.dev>
-- Guide for this script: <https://nuxsh.is-a.dev/blog/custom-nvim-statusline.html>
local fn = vim.fn
local api = vim.api

local modes = {
  ["n"]  = "NORMAL",
  ["no"] = "NORMAL",
  ["v"]  = "VISUAL",
  ["V"]  = "VISUAL LINE",
  [""] = "VISUAL BLOCK",
  ["s"]  = "SELECT",
  ["S"]  = "SELECT LINE",
  [""] = "SELECT BLOCK",
  ["i"]  = "INSERT",
  ["ic"] = "INSERT",
  ["R"]  = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"]  = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"]  = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"]  = "SHELL",
  ["t"]  = "TERMINAL",
}
-- Get the mode and compare it to the list above
local function mode()
  local current_mode = api.nvim_get_mode().mode
  return string.format(" %s ", modes[current_mode]):upper()
end

-- Looks for the filepath and filename
local function filepath()
	local fpath = fn.fnamemodify(fn.expand "%", ":~:.:h")
	if fpath == "" or fpath == "." then
		return ""
	end
	return string.format(" %%<%s/", fpath)
end
local function filename()
	local fname = fn.expand "%:t"
	if fname == "" then
		return ""
	end
	return fname .. " "
end

-- Makes the filetype uppercase
local function filetype()
  return string.format(" %s ", vim.bo.filetype):upper()
end

-- Look for line information (percentage, line and column number)
local function lineinfo()
	if vim.bo.filetype == "alpha" then
		return ""
	end
	return " %P %l:%c "
end

-- Actually structuring the statusline
Statusline = {}
Statusline.active = function()
	return table.concat {
		"%#Statusline#",
		mode(),
		filetype(),
		"%#Normal# ",
		filepath(),
		filename(),
		"%=%#StatusLineExtra#",
		lineinfo(),
	}
end

-- Displaying the status line
--vim.cmd 'setlocal statusline=%!v:lua.Statusline.active()'

api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  augroup END
]], false)

--[[
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
]]--
