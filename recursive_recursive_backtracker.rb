class RecursiveRecursiveBacktracker

  def self.on(grid, start_at: grid.random_cell)
    neighbors = start_at.neighbors.select { |n| n.links.empty? }

    return if neighbors.empty?

    neighbor = neighbors.sample
    start_at.link(neighbor)

    unless on(grid, start_at: neighbor)
      on(grid, start_at: start_at)
    end
  end

end
