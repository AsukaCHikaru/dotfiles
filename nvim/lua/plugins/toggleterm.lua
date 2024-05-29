return {
  {
    "akinsho/toggleterm.nvim",
    -- tag = "*", -- or specify a particular version or "main"
    config = function()
      require("toggleterm").setup({
        -- Configuration options here
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "horizontal",
        close_on_exit = true,
        shell = "/opt/homebrew/bin/fish",
      })
    end,
  },
}
