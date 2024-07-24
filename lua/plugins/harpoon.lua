return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end, { desc = "Harpoon append" })
    vim.keymap.set("n", "<M-w>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Toggle quick menu" })

    vim.keymap.set("n", "<leader>hd", function()
      harpoon:list():remove()
    end, { desc = "Delete current buffer" })

    vim.keymap.set("n", "<M-1>", function()
      harpoon:list():select(1)
    end, { desc = "Go to 1. harpoon item" })
    vim.keymap.set("n", "<M-2>", function()
      harpoon:list():select(2)
    end, { desc = "Go to 2. harpoon item" })
    vim.keymap.set("n", "<M-3>", function()
      harpoon:list():select(3)
    end, { desc = "Go to 3. harpoon item" })
    vim.keymap.set("n", "<M-4>", function()
      harpoon:list():select(4)
    end, { desc = "Go to 4. harpoon item" })
    vim.keymap.set("n", "<M-5>", function()
      harpoon:list():select(5)
    end, { desc = "Go to 5. harpoon item" })
    vim.keymap.set("n", "<M-6>", function()
      harpoon:list():select(6)
    end, { desc = "Go to 6. harpoon item" })
    vim.keymap.set("n", "<M-7>", function()
      harpoon:list():select(7)
    end, { desc = "Go to 7. harpoon item" })
    vim.keymap.set("n", "<M-8>", function()
      harpoon:list():select(8)
    end, { desc = "Go to 8. harpoon item" })
    vim.keymap.set("n", "<M-9>", function()
      harpoon:list():select(9)
    end, { desc = "Go to 9. harpoon item" })

    vim.keymap.set("n", "<M-q>", function()
      harpoon:list():prev()
    end, { desc = "Go to previous harpoon item" })
    vim.keymap.set("n", "<M-e>", function()
      harpoon:list():next()
    end, { desc = "Go to next harpoon item" })

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
    end

    vim.keymap.set("n", "<C-w>", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
  end,
}
