# require './lib/cell'

class Cell
end

class Grid

	def initialize(content=Cell.new)
		@grid = []
		10.times do
			@grid << ([content] * 10)
		end
	end

	def grid
		@grid
	end

	def shot(x, y)
		off_grid(x ,y)
		grid[x][y].check_for_hit!
	end

	def place_boat(x, y, boat)
		off_grid(x, y)
		grid[x][y].content(boat)
	end

	def off_grid(x, y)
		raise "That sqaure is off the grid" if x > 9 || y > 9
	end

end