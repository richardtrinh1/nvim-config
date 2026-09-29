return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.sections.lualine_b = {
      {
        "branch",
        fmt = function(branch)
          return #branch > 24 and branch:sub(1, 21) .. "..." or branch
        end,
      },
    }
    opts.sections.lualine_y = {}
    opts.sections.lualine_z = {
      "filesize",
      function()
        return vim.api.nvim_buf_line_count(0) .. " lines"
      end,
    }
  end,
}
