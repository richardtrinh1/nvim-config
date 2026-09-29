return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, 1, "filesize")
    table.insert(opts.sections.lualine_x, 2, function()
      return vim.api.nvim_buf_line_count(0) .. " lines"
    end)
  end,
}
