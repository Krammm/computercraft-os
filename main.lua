-- This file handles user-inserted commands.
os.loadAPI("computercraft-os/apis/default.lua")

local function clear() 
  
  term.clear()
  term.setCursorPos(1, 1)
  term.setTextColor(default.mod_color)
  print("> ")
  term.setCursorPos(3, 1)
  term.setTextColor(default.default_color)
  
end

while true do
  
  clear()
  local command = read()
  
  local success = fs.exists("computercraft-os/programs/" .. command .. ".lua")
  
  if success then
    
      shell.run("computercraft-os/programs/" .. command .. ".lua")
    
  else 
    
    term.setTextColor(default.error_color)
    print("Error. '" .. command .. "' command not found.")
    
  end
  
end
