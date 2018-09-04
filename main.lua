-- This file handles user-inserted commands.
os.loadAPI("computercraft-os/apis/default.lua")

fs.delete("apis")
fs.delete("programs")
fs.delete("users")

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
