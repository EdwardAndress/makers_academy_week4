# require './lib/cell'

class Cell
end

class Grid

	def initialize(content=Cell.new)
		@grid = Array.new(10, Array.new(10){  content })
	end

	def grid
		@grid
	end

	def shot(x, y)
		off_grid(x ,y)
		grid[x][y].hit_the_boat
	end

	def place_boat(x, y, boat)
		off_grid(x, y)
		grid[x][y].content(boat)
	end

	def off_grid(x, y)
		raise "That sqaure is off the grid" if x > 9 || y > 9
	end

end