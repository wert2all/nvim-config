return {
  mode={"n", "v"},
  w = { ":w!<CR>", "Save" },
  q = { ":confirm q<CR>", "Quit" },
  f = {
    name = "+Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File (CWD)" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    w = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    -------------
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    T = { "<cmd>Telescope grep_string<cr>", "Grep String" },
    k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    C = { "<cmd>Telescope commands<cr>", "Commands" },
    l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    c = { "<cmd>Telescope git_commits<cr>", "Git commits" },
    B = { "<cmd>Telescope git_branches<cr>", "Git branches" },
    m = { "<cmd>Telescope git_status<cr>", "Git status" },
    S = { "<cmd>Telescope git_stash<cr>", "Git stash" },
    e = { "<cmd>Telescope frecency<cr>", "Frecency" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    d = {
      name = "+DAP",
      c = { "<cmd>Telescope dap commands<cr>", "Dap Commands" },
      b = { "<cmd>Telescope dap list_breakpoints<cr>", "Dap Breakpoints" },
      g = { "<cmd>Telescope dap configurations<cr>", "Dap Configurations" },
      v = { "<cmd>Telescope dap variables<cr>", "Dap Variables" },
      f = { "<cmd>Telescope dap frames<cr>", "Dap Frames" },
    },
    N = {
      function ()
        require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
      end,
      "Search Neovim Config",
    },
  },
  c = {
    name="+Code"
  }

}
