require 'colored_grid'
require 'hunt_random_and_kill'

grid = ColoredGrid.new(20,20)
HuntRandomAndKill.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = "hunt_random_and_kill_colored.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
