require 'colored_grid'
require 'wilsons_biased'
require 'wilsons_refuseloop'
# require 'wilsons'

6.times do |n|
  grid = ColoredGrid.new(20,20)
  # WilsonsBiased.on(grid)
  WilsonsRefuseloop.on(grid)
  # Wilsons.on(grid)

  middle = grid[grid.rows / 2, grid.columns / 2]
  grid.distances = middle.distances

  filename = "wilsons_%02d.png" % n
  grid.to_png.save(filename)
  puts "saved to #{filename}"
end
