return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup {
        -- choose default mode (valid term, tab, float, toggle, buf)
        mode = "term",
        -- Focus on runner window(only works on toggle, term and tab mode)
        focus = true,
        -- startinsert (see ':h inserting-ex')
        startinsert = true,
        term = {
          --  Position to open the terminal, this option is ignored if mode is tab
          position = "vert",
          -- window size, this option is ignored if tab is true
          size = 50,
        },
        float = {
          -- Key that close the code_runner floating window
          close_key = "<ESC>",
          -- Window border (see ':h nvim_open_win')
          border = "none",

          -- Num from `0 - 1` for measurements
          height = 0.8,
          width = 0.8,
          x = 0.5,
          y = 0.5,

          -- Highlight group for floating window/border (see ':h winhl')
          border_hl = "FloatBorder",
          float_hl = "Normal",

          -- Transparency (see ':h winblend')
          blend = 0,
        },
        filetype_path = "", -- No default path defined
        filetype = {
          c = "cd $dir && gcc *.cpp -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cpp = "cd $dir && g++ -std=c++17 *.cpp -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          java = "cd $dir && java $fileName",
          python = "python3 -u",
          typescript = "deno run",
          rust = "cargo run",
          javascript = "node",
          lua = "cd $dir && lua *.lua",
          go = "go run",
          dart = "cd $dir && dart run",
        },
        project_path = "", -- No default path defined
        project = {},
      }
    end,
  },
}
