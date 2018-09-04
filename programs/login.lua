os.loadAPI("computercraft-os/apis/sha256.lua")

local passfile = fs.open("computercraft-os/user/password.txt", "r")
local password = passfile.readAll()
local loggedIn = false

term.clear()
term.setCursorPos(1, 1)

term.setTextColor(colors.orange)
print("Insert your password. ")

while loggedIn == false do
  
  term.setTextColor(colors.white)
  local passwordtry = read()

  if sha256.sha256(passwordtry) == password then
  
    loggedIn = true
    term.setTextColor(colors.green)
    print("Access Granted.")
    
  else
  
    term.setTextColor(colors.red)  
    print("Wrong Password. Rerty")
    
  end

end

print("You can change your password with the login-config command.")
