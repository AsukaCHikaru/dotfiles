-- Find prettier config file name from a list of candidates
local function find_prettier_config()
  local filenames = { "prettier.config.mjs", ".prettierrc.json", ".prettierrc.mjs" }
  local cwd = vim.fn.getcwd()

  for _, filename in ipairs(filenames) do
    local path = vim.fn.findfile(filename, cwd .. ";")
    if path ~= "" then
      return path
    end
  end
  return nil
end

return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        command = "prettier",
        args = function()
          local config_path = find_prettier_config()
          if config_path then
            return {
              "--config",
              config_path,
              "--stdin-filepath",
              "$FILENAME",
            }
          else
            return {
              "--stdin-filepath",
              "$FILENAME",
            }
          end
        end,
        stdin = true,
      },
    },
  },
}
