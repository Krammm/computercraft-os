os.loadAPI("computercraft-so/apis/default.lua")
os.loadAPI("computercraft-os/apis/sha256.lua")

term.setTextColor(colors.cyan)

local passfile = fs.open("computercraft-os/user/password.txt", "w")

print("Insert your new password.")

local password = read()
password = sha256.sha256(password)

fs.write(password)

term.setTextColor(colors.green)
print("Password changed successfully.")
