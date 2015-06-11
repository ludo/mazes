require 'recursive_recursive_backtracker'
require 'grid'

grid = Grid.new(20,20)
RecursiveRecursiveBacktracker.on(grid)

filename = "recursive_recursive_backtracker.png"
grid.to_png.save(filename)
puts "saved to #{filename}"
