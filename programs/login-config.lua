os.loadAPI("computercraft-os/apis/default.lua")
os.loadAPI("computercraft-os/apis/sha256.lua")

term.setTextColor(default.mod_color)

local passfile = fs.open("computercraft-os/user/password.txt", "w")

print("Insert your new password.")

local password = read()
password = sha256.sha256(password)

passfile.write(password)
passfile.close()

term.setTextColor(defualt.success_color)
print("Password changed successfully.")
