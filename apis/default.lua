mod_color = colors.cyan
default_color = colors.white
error_color = colors.red


function clear() 
  
  term.clear()
  term.setCursorPos(1, 1)
  term.setTextColor(default.mod_color)
  print("> ")
  term.setCursorPos(3, 1)
  term.setTextColor(default.default_color)
  
end


