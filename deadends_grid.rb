require 'chunky_png'
require 'grid'

class DeadendsGrid < Grid
  def background_color_for(cell)
    intensity = 255 - (200 / cell.links.count)
    ChunkyPNG::Color.rgb(0, intensity, 0)
  end
end
