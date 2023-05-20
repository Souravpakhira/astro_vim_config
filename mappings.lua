-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<Tab>"] = { ":bnext<cr>", desc = "Next buffer" },
    ["<S-Tab>"] = { ":bprevious<cr>", desc = "Previous buffer" },
    ["]b"] = false,
    ["[b"] = false,
    ["<C-d>"] = { "<C-d>zz", desc = "Move down" },
    ["C-u"] = { "<C-u>zz", desc = "Move up" },
    -- [";"] = { ":", desc = "enter command mode" },
    ["<leader>td"] = {
      function() require("astronvim.utils").toggle_term_cmd "lazydocker" end,
      desc = "ToggleTerm lazydocker",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {},
  i = {

    ["C-;"] = false, -- change description but the same command
  },
}
