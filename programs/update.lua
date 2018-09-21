os.loadAPI("computercraft-os/apis/default.lua")

term.setTextColor(default.mod_color)

print("Removing old files... ")

fs.delete("startup") 
fs.delete("startup.lua")
fs.delete("computercraft-os/")

print("Creating new files... ")
fs.makeDir("computercraft-os/")
shell.run("cd computercraft-os")
shell.run("gitget Krammm computercraft-os")
fs.move("computercraft-os/startup.lua", "startup.lua")

term.setTextColor(default.success_color)
print("Successfully Updated. Rebooting.")

os.reboot()
