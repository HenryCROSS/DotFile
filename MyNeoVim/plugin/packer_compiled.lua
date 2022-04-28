-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/henry/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/henry/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/henry/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/henry/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/henry/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.autosave\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.comment\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["JABS.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.jabs\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/JABS.nvim",
    url = "https://github.com/matbme/JABS.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["asyncrun.vim"] = {
    after = { "telescope-asynctasks.nvim" },
    loaded = true,
    only_config = true
  },
  ["asynctasks.vim"] = {
    after = { "telescope-asynctasks.nvim" },
    loaded = true,
    only_config = true
  },
  ["bufdelete.nvim"] = {
    config = { "\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.bufdelete\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.bufferline\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    after_files = { "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  dashboard = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload!core.plugin_config.dashboard\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/dashboard",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  fd = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/fd",
    url = "https://github.com/sharkdp/fd"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\27core.lsp_config.fidget\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["filetype.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.filetype\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzy-lua-native"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/fzy-lua-native",
    url = "https://github.com/romgrk/fzy-lua-native"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.gitsigns\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.lsp_config.goto_preview\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\27core.plugin_config.hop\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.lsp_config.lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.lualine\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload'core.plugin_config.markdownpreview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mini.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.mini\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/mini.nvim",
    url = "https://github.com/echasnovski/mini.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.neotree\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neorg = {
    config = { "\27LJ\2\nE\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\29core.plugin_config.neorg\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.nullls\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.autopairs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-buffer", "cmp-cmdline", "cmp-nvim-lua", "cmp-path", "cmp_luasnip" },
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\24core.lsp_config.cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload#core.lsp_config.codeactionmenu\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.plugin_config.nvimcolorizer\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.nvimgps\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\nÚ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\5\0\0\14gitcommit\14gitrebase\bsvn\rhgcommit\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.lsp_config.nvimlspinstaller\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.lsp_config.lspconfig_cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.notify\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload!core.plugin_config.scrollbar\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-autopairs", "nvim-gps", "neorg" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvimesweeper = {
    loaded = false,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/nvimesweeper",
    url = "https://github.com/seandewar/nvimesweeper"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.rainbow\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/rainbow",
    url = "https://github.com/luochen1990/rainbow"
  },
  ["refactoring.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload#core.plugin_config.refactoring\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/refactoring.nvim",
    url = "https://github.com/ThePrimeagen/refactoring.nvim"
  },
  sniprun = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload\31core.plugin_config.sniprun\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.stabilize\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\nN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload&core.plugin_config.symbolsoutline\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-asynctasks.nvim"] = {
    config = { "\27LJ\2\nŠ\1\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0>:lua require('telescope').extensions.asynctasks.all()<cr>\15<leader>at\6n\20nvim_set_keymap\bapi\bvim\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/telescope-asynctasks.nvim",
    url = "https://github.com/GustavoKatel/telescope-asynctasks.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17file_browser\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\n‰\1\0\0\3\0\t\0\0146\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0\6\0\4\0X\0\6€6\0\5\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\15Windows_NT\fsysname\ros_uname\tloop\bvim\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16media_files\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    after = { "refactoring.nvim", "telescope-file-browser.nvim", "telescope-fzf-native.nvim", "telescope-media-files.nvim", "neorg" },
    loaded = true,
    only_config = true
  },
  tlib_vim = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/tlib_vim",
    url = "https://github.com/tomtom/tlib_vim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.toggleterm\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\15core.theme\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["translate.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.plugin_config.translatenvim\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/translate.nvim",
    url = "https://github.com/uga-rosa/translate.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.trouble\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["venn.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.venn\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/venn.nvim",
    url = "https://github.com/jbyuki/venn.nvim"
  },
  ["vim-addon-mw-utils"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-addon-mw-utils",
    url = "https://github.com/MarcWeber/vim-addon-mw-utils"
  },
  ["vim-carbon-now-sh"] = {
    commands = { "CarbonNowSh" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/vim-carbon-now-sh",
    url = "https://github.com/kristijanhusak/vim-carbon-now-sh"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-snipmate"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-snipmate",
    url = "https://github.com/garbas/vim-snipmate"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-translator"] = {
    commands = { "Translate", "TranslateV", "TranslateW", "TranslateWV", "TranslateR", "TranslateRV", "TranslateX" },
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.plugin_config.vimtranslator\frequire\0" },
    keys = { { "n", "<Leader>tw" }, { "v", "<Leader>tw" }, { "n", "<Leader>tt" }, { "v", "<Leader>tt" }, { "n", "<Leader>tr" }, { "v", "<Leader>tr" }, { "n", "<Leader>tx" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/vim-translator",
    url = "https://github.com/voldikss/vim-translator"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.whichkey\frequire\0" },
    loaded = true,
    path = "/home/henry/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.wilder\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/henry/.local/share/nvim/site/pack/packer/opt/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: venn.nvim
time([[Config for venn.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.venn\frequire\0", "config", "venn.nvim")
time([[Config for venn.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: mini.nvim
time([[Config for mini.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.mini\frequire\0", "config", "mini.nvim")
time([[Config for mini.nvim]], false)
-- Config for: sniprun
time([[Config for sniprun]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload\31core.plugin_config.sniprun\frequire\0", "config", "sniprun")
time([[Config for sniprun]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\5\0\0\14gitcommit\14gitrebase\bsvn\rhgcommit\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: asynctasks.vim
time([[Config for asynctasks.vim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.asynctasks\frequire\0", "config", "asynctasks.vim")
time([[Config for asynctasks.vim]], false)
-- Config for: asyncrun.vim
time([[Config for asyncrun.vim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.asyncrun\frequire\0", "config", "asyncrun.vim")
time([[Config for asyncrun.vim]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.nullls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nN\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload&core.plugin_config.symbolsoutline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.notify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\27core.lsp_config.fidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.whichkey\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-code-action-menu
time([[Config for nvim-code-action-menu]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload#core.lsp_config.codeactionmenu\frequire\0", "config", "nvim-code-action-menu")
time([[Config for nvim-code-action-menu]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.filetype\frequire\0", "config", "filetype.nvim")
time([[Config for filetype.nvim]], false)
-- Config for: rainbow
time([[Config for rainbow]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.rainbow\frequire\0", "config", "rainbow")
time([[Config for rainbow]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.plugin_config.nvimcolorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: AutoSave.nvim
time([[Config for AutoSave.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.autosave\frequire\0", "config", "AutoSave.nvim")
time([[Config for AutoSave.nvim]], false)
-- Config for: bufdelete.nvim
time([[Config for bufdelete.nvim]], true)
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.bufdelete\frequire\0", "config", "bufdelete.nvim")
time([[Config for bufdelete.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.comment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.lsp_config.goto_preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: dashboard
time([[Config for dashboard]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload!core.plugin_config.dashboard\frequire\0", "config", "dashboard")
time([[Config for dashboard]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\27core.plugin_config.hop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\15core.theme\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.lsp_config.lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload core.plugin_config.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: JABS.nvim
time([[Config for JABS.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\28core.plugin_config.jabs\frequire\0", "config", "JABS.nvim")
time([[Config for JABS.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.neotree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-scrollbar
time([[Config for nvim-scrollbar]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\2\18\2\0\0009\0\2\0B\0\2\1K\0\1\0\tload!core.plugin_config.scrollbar\frequire\0", "config", "nvim-scrollbar")
time([[Config for nvim-scrollbar]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.plugin_config.toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.trouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-gps ]]

-- Config for: nvim-gps
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\31core.plugin_config.nvimgps\frequire\0", "config", "nvim-gps")

vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\nI\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload!core.plugin_config.autopairs\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd fzy-lua-native ]]
vim.cmd [[ packadd wilder.nvim ]]

-- Config for: wilder.nvim
try_loadstring("\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\30core.plugin_config.wilder\frequire\0", "config", "wilder.nvim")

vim.cmd [[ packadd telescope-asynctasks.nvim ]]

-- Config for: telescope-asynctasks.nvim
try_loadstring("\27LJ\2\nŠ\1\0\0\6\0\6\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0004\5\0\0B\0\5\1K\0\1\0>:lua require('telescope').extensions.asynctasks.all()<cr>\15<leader>at\6n\20nvim_set_keymap\bapi\bvim\0", "config", "telescope-asynctasks.nvim")

vim.cmd [[ packadd refactoring.nvim ]]

-- Config for: refactoring.nvim
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload#core.plugin_config.refactoring\frequire\0", "config", "refactoring.nvim")

vim.cmd [[ packadd telescope-media-files.nvim ]]

-- Config for: telescope-media-files.nvim
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16media_files\19load_extension\14telescope\frequire\0", "config", "telescope-media-files.nvim")

vim.cmd [[ packadd telescope-fzf-native.nvim ]]

-- Config for: telescope-fzf-native.nvim
try_loadstring("\27LJ\2\n‰\1\0\0\3\0\t\0\0146\0\0\0009\0\1\0009\0\2\0B\0\1\0029\0\3\0\6\0\4\0X\0\6€6\0\5\0'\2\6\0B\0\2\0029\0\a\0'\2\b\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\15Windows_NT\fsysname\ros_uname\tloop\bvim\0", "config", "telescope-fzf-native.nvim")

vim.cmd [[ packadd telescope-file-browser.nvim ]]

-- Config for: telescope-file-browser.nvim
try_loadstring("\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17file_browser\19load_extension\14telescope\frequire\0", "config", "telescope-file-browser.nvim")

vim.cmd [[ packadd cmp-nvim-lsp ]]
vim.cmd [[ packadd nvim-lsp-installer ]]

-- Config for: nvim-lsp-installer
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload%core.lsp_config.nvimlspinstaller\frequire\0", "config", "nvim-lsp-installer")

vim.cmd [[ packadd nvim-lspconfig ]]

-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\"core.lsp_config.lspconfig_cmp\frequire\0", "config", "nvim-lspconfig")

vim.cmd [[ packadd LuaSnip ]]
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\tload\24core.lsp_config.cmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd cmp-cmdline ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd cmp-buffer ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd lspkind-nvim ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateR lua require("packer.load")({'vim-translator'}, { cmd = "TranslateR", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateRV lua require("packer.load")({'vim-translator'}, { cmd = "TranslateRV", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateX lua require("packer.load")({'vim-translator'}, { cmd = "TranslateX", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CarbonNowSh lua require("packer.load")({'vim-carbon-now-sh'}, { cmd = "CarbonNowSh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Translate lua require("packer.load")({'vim-translator'}, { cmd = "Translate", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateV lua require("packer.load")({'vim-translator'}, { cmd = "TranslateV", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateW lua require("packer.load")({'vim-translator'}, { cmd = "TranslateW", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TranslateWV lua require("packer.load")({'vim-translator'}, { cmd = "TranslateWV", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> <Leader>tx <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tx", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <Leader>tt <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <Leader>tr <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Leader>tr <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> <Leader>tw <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tw", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Leader>tw <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tw", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Leader>tt <cmd>lua require("packer.load")({'vim-translator'}, { keys = "<lt>Leader>tt", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType md ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType norg ++once lua require("packer.load")({'neorg'}, { ft = "norg" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/henry/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], true)
vim.cmd [[source /home/henry/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]]
time([[Sourcing ftdetect script at: /home/henry/.local/share/nvim/site/pack/packer/opt/neorg/ftdetect/norg.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
