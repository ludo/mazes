require 'deadends_grid'
require 'hunt_and_kill'

grid = DeadendsGrid.new(20,20)
HuntAndKill.on(grid)

filename = "hunt_and_kill_deadends.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
