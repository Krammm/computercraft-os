-- This file handles user-inserted commands.

default_color = colors.white
mod_color = colors.cyan
error_color = colors.red

local function clear() 
  
  term.clear()
  term.setCursorPos(1, 1)
  term.setTextColor(mod_color)
  print("> ")
  term.setCursorPos(3, 1)
  term.setTextColor(default_color)
  
end

while true do
  
  clear()
  local command = read()
  
  local success = fs.exists("computercraft-os/programs/" .. command .. ".lua")
  
  if success then
    
      shell.run("computercraft-os/programs/" .. command .. ".lua")
    
  else 
    
    term.setTextColor(error_color)
    print("Error. '" .. command .. "' command not found.")
    
  end
  
end
