class Wilsons
  def self.on(grid)
    unvisited = []
    grid.each_cell { |cell| unvisited << cell }

    first = unvisited.sample
    unvisited.delete(first)

    while unvisited.any?
      cell = unvisited.sample
      path = [cell]

      while unvisited.include?(cell)
        cell = cell.neighbors.sample
        position = path.index(cell)
        if position
          path[(position + 1)..-1] = []
        else
          path << cell
        end
      end

      (path.length - 1).times do |index|
        path[index].link(path[index + 1])
        unvisited.delete(path[index])
      end
    end

    grid
  end
end
