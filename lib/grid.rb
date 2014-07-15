# require './lib/cell'

class Cell;end

class Grid

	def initialize(content=Cell.new)
		@grid = Array.new(10, Array.new(10){  content })
	end

	def grid
		@grid
	end

	def shot(x, y)
		grid[x][y].hit_the_boat
	end

	def place_boat(x, y, boat)
		grid[x][y].content(boat)
	end

end