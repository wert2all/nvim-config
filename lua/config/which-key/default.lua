return {
  mode={"n", "v"},
  w = { ":w!<CR>", "Save" },
  q = { ":confirm q<CR>", "Quit" },

  f = {
    name = "+Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File (CWD)" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    w = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = {
      function ()
        require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
      end,
      "Search Neovim Config",
    },

    -------------
    -- h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    -- H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    -- M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    -- R = { "<cmd>Telescope registers<cr>", "Registers" },
    -- T = { "<cmd>Telescope grep_string<cr>", "Grep String" },
    -- C = { "<cmd>Telescope commands<cr>", "Commands" },
    -- l = { "<cmd>Telescope resume<cr>", "Resume last search" },
        -- e = { "<cmd>Telescope frecency<cr>", "Frecency" },
    d = {
      name = "+DAP",
      c = { "<cmd>Telescope dap commands<cr>", "Dap Commands" },
      b = { "<cmd>Telescope dap list_breakpoints<cr>", "Dap Breakpoints" },
      g = { "<cmd>Telescope dap configurations<cr>", "Dap Configurations" },
      v = { "<cmd>Telescope dap variables<cr>", "Dap Variables" },
      f = { "<cmd>Telescope dap frames<cr>", "Dap Frames" },
    },
  },
  c = {
    name = "+Code",
    t = {
      function ()
        if vim.g.codeium_enabled == true then
          vim.cmd "CodeiumDisable"
        else
          vim.cmd "CodeiumEnable"
        end
      end,
      "Toggle Codeium",
    } 
  },
  g = {
    name = "+Git",
    c = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    b = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    s = { "<cmd>Telescope git_status<cr>", "Git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Git stash" },
  }
}
