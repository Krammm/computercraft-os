os.loadAPI("computercraft-os/apis/default.lua")

setTextColor(default.mod_color)

print("Removing old files... ")
fs.move("computercraft-os/user", "")
fs.remove("computercraft-os/")

print("Creating new files... ")
fs.makeDir("computercraft-os/")
shell.run("cd computercraft-os")
shell.run("gitget Krammm computercraft-os")
fs.move("computercraft-os/startup.lua", "")

setTextColor(default.success_color)
print("Successfully Updated.")
