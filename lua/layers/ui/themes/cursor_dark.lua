-- Credits to original theme from Cursor editor: https://github.com/imzivko/cursor-dark-core
-- This is a port of the Cursor Dark theme for Neovim

local M = {}

M.base_30 = {
  white = '#DEE1E6',
  darker_black = '#151718',
  black = '#1B1D1E', -- nvim bg
  black2 = '#222425',
  one_bg = '#262829',
  one_bg2 = '#303233',
  one_bg3 = '#3a3c3d',
  grey = '#444647',
  grey_fg = '#4e5051',
  grey_fg2 = '#585a5b',
  light_grey = '#636566',
  red = '#F07178',
  baby_pink = '#FF8A80',
  pink = '#FF80AB',
  line = '#292b2c', -- for lines like vertsplit
  green = '#C3E88D',
  vibrant_green = '#B9F27C',
  blue = '#82AAFF',
  nord_blue = '#5EC4FF',
  yellow = '#FFCB6B',
  sun = '#FFD369',
  purple = '#C792EA',
  dark_purple = '#BB80B3',
  teal = '#45A9F9',
  orange = '#F78C6C',
  cyan = '#89DDFF',
  statusline_bg = '#222425',
  lightbg = '#303233',
  pmenu_bg = '#82AAFF',
  folder_bg = '#5EC4FF',
}

M.base_16 = {
  base00 = '#1B1D1E', -- Default background
  base01 = '#222425', -- Lighter background (status bars, line number, folding marks)
  base02 = '#303233', -- Selection background
  base03 = '#444647', -- Comments, invisibles, line highlighting
  base04 = '#636566', -- Dark foreground (status bars)
  base05 = '#DEE1E6', -- Default foreground
  base06 = '#E9EAEB', -- Light foreground
  base07 = '#FFFFFF', -- Light background
  base08 = '#F07178', -- Variables, XML tags, markup link text, markup lists
  base09 = '#F78C6C', -- Integers, boolean, constants, XML attributes, markup link url
  base0A = '#FFCB6B', -- Classes, markup bold, search text background
  base0B = '#C3E88D', -- Strings, inherited class, markup code, diff inserted
  base0C = '#89DDFF', -- Support, regular expressions, escape chars, markup quotes
  base0D = '#82AAFF', -- Functions, methods, attribute IDs, headings
  base0E = '#C792EA', -- Keywords, storage, selector, markup italic, diff changed
  base0F = '#FF8A80', -- Deprecated, opening/closing embedded language tags
}

M.polish_hl = {
  treesitter = {
    ['@variable'] = { fg = M.base_30.white },
    ['@punctuation.bracket'] = { fg = M.base_30.cyan },
    ['@punctuation.delimiter'] = { fg = M.base_30.cyan },
    ['@tag'] = { fg = M.base_30.red },
    ['@tag.attribute'] = { fg = M.base_30.orange },
    ['@keyword'] = { fg = M.base_30.purple },
    ['@keyword.function'] = { fg = M.base_30.purple },
    ['@keyword.return'] = { fg = M.base_30.purple },
    ['@function'] = { fg = M.base_30.blue },
    ['@function.method'] = { fg = M.base_30.blue },
    ['@function.macro'] = { fg = M.base_30.blue },
    ['@constant'] = { fg = M.base_30.orange },
    ['@constant.builtin'] = { fg = M.base_30.orange },
    ['@constructor'] = { fg = M.base_30.yellow },
    ['@string'] = { fg = M.base_30.green },
    ['@string.escape'] = { fg = M.base_30.cyan },
    ['@number'] = { fg = M.base_30.orange },
    ['@boolean'] = { fg = M.base_30.orange },
    ['@property'] = { fg = M.base_30.cyan },
    ['@type'] = { fg = M.base_30.yellow },
    ['@parameter'] = { fg = M.base_30.white },
    ['@variable.parameter'] = { fg = M.base_30.white },
    ['@variable.member.key'] = { fg = M.base_30.cyan },
    ['@comment'] = { fg = M.base_30.grey_fg },
    ['@operator'] = { fg = M.base_30.cyan },
  },
}

M.type = 'dark'

M = require('base46').override_theme(M, 'cursor_dark')

return M
