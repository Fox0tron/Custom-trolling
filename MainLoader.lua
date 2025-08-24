-- MainLoader.lua
-- This will combine all parts into one script and run it

local function fetch(path)
    return game:HttpGet("https://raw.githubusercontent.com/Fox0tron/Custom-trolling/main/" .. path)
end

-- Concatenate all 3 scripts into one big chunk
local fullScript = table.concat({
    fetch("ExploitLibrary.lua"),
    fetch("GUI.lua"),
    fetch("BreakIn.lua"),
}, "\n")

-- Run the combined script
loadstring(fullScript)()
