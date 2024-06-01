local M = {}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add a breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>ge"] = {
      function()
        vim.cmd("GoIfErr")
      end,
      "Add if err boilerplate"
    },
    ["<leader>tj"] = {
      function()
        vim.cmd("GoTagAdd json")
      end,
      "Add json tags to struct"
    },
    ["<leader>tjr"] = {
      function()
        vim.cmd("GoTagRm json")
      end,
      "Remove Json tags from struct"
    },
  }
}

return M
