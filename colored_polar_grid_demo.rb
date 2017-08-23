require 'colored_polar_grid'
require 'recursive_backtracker'

grid = ColoredPolarGrid.new(25)
RecursiveBacktracker.on(grid)

center = grid[0,0]
grid.distances = center.distances

filename = "polar.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
