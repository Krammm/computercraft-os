-- This file handles user-inserted commands.
os.loadAPI("computercraft-os/apis/default.lua")

default.clear()

while true do
  
  local command = read()
  
  local success = fs.exists("computercraft-os/programs/" .. command .. ".lua")
  
  if success then
    
      shell.run("computercraft-os/programs/" .. command .. ".lua")
    
  else 
    
    term.setTextColor(default.error_color)
    print("Error. '" .. command .. "' command not found.")
    
  end
  
end
