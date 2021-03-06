os.loadAPI("computercraft-os/apis/default.lua")
os.loadAPI("computercraft-os/apis/sha256.lua")

local passfile = fs.open("computercraft-os/user/password.txt", "r") -- Get the file where the hashed password is located
local password = passfile.readAll() -- Read the password
passfile.close() -- Close the file
local loggedIn = false -- Loop boolean

term.clear()
term.setCursorPos(1, 1) 

term.setTextColor(colors.orange) 
print("Insert your password. ") 

while loggedIn == false do
  
  term.setTextColor(default.default_color)
  local passwordtry = read() -- Get the user-inserted password

  if sha256.sha256(passwordtry) == password then -- Check if the hash of the inserted password is equal to the real hash of the real password
  
    loggedIn = true
    term.setTextColor(default_success_color)
    print("Access Granted.")
    
  else
  
    term.setTextColor(default.error_color)  
    print("Wrong Password. Retry")
    
  end

end
