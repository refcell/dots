
--[[ Helper function to recursively print the table for debugging --]]
local function printTable(t, indent)
    indent = indent or 0
    for k, v in pairs(t) do
        if type(v) == "table" then
            print(string.rep("  ", indent) .. tostring(k) .. ":")
            printTable(v, indent + 1)
        else
            print(string.rep("  ", indent) .. tostring(k) .. ": " .. tostring(v))
        end
    end
end

--[[ Function to load and execute a Lua file --]]
local function loadLuaFile(file)
    local chunk, err = loadfile(file)
    if not chunk then
        print("Error loading file:", err)
        return nil
    end
    return chunk()
end

--[[ We comment out the below since we only want to run this as a script

-- Loads files using the luafilesystem --
local function lfs_load()
  local lfs = require("lfs")
  -- Iterate through all files in the current directory --
  for file in lfs.dir(lfs.currentdir()) do
      -- Check if it's a Lua file and not init.lua
      if file:match("%.lua$") and file ~= "init.lua" then
          local var_name = file:match("^(.+)%.")
          local file_chunk = loadLuaFile(file)
          _ENV[var_name] = file_chunk
          -- Expect configs to be nested.
          -- Allows for multiple configs in any given external file.
          for _, v in pairs(file_chunk) do
            table.insert(config_table, v)
          end
      end
  end
end

--]]

config_table = {}

local function import_all_lua_files()
  local dir = vim.fn.expand('<sfile>:p:h')
  local files = vim.fn.globpath(dir, '*.lua', false, true)

  for _, file in ipairs(files) do
    local filename = vim.fn.fnamemodify(file, ':t:r')
    if filename ~= 'init' then
      local module_name = string.format('%s.%s', dir, filename):gsub('/', '.')
      local imported_module = require(module_name)
      for _, v in pairs(imported_module) do
        table.insert(config_table, v)
      end
    end
  end
  print("Loading config_table")
  print(config_table)
  printTable(config_table, 0)
end

import_all_lua_files()

return config_table
