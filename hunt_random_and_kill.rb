class HuntRandomAndKill
  def self.on(grid)
    current = grid.random_cell

    while current
      unvisited_neighbors = current.neighbors.select { |n| n.links.empty? }

      if unvisited_neighbors.any?
        neighbor = unvisited_neighbors.sample
        current.link(neighbor)
        current = neighbor
      else
        current = nil

        # grid.each_cell do |cell|
        tried_cells = []
        while tried_cells.count < grid.size
          cell = grid.random_cell
          tried_cells << cell
          visited_neighbors = cell.neighbors.select { |n| n.links.any? }
          if cell.links.empty? && visited_neighbors.any?
            current = cell
            neighbor = visited_neighbors.sample
            current.link(neighbor)

            break
          end
        end
      end
    end

    grid
  end
end
