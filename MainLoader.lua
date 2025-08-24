-- MainLoader.lua
-- Combines all parts into one script and runs it

local function fetch(path)
    return game:HttpGet("https://raw.githubusercontent.com/Fox0tron/Custom-trolling/main/" .. path)
end

-- Merge all 3 files into one script
local fullScript = table.concat({
    fetch("ExploitLibrary.lua"),
    fetch("GUI.lua"),
    fetch("BreakIn.lua"),
}, "\n")

-- Run the combined script
loadstring(fullScript)()
