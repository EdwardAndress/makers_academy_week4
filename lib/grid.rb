require './lib/cell'

class Grid

	def initialize
		@grid= Array.new(10){Array.new(10)}
		@grid.map!{|internal_array|internal_array.map!{|cell| cell=Cell.new }}
	end

	def add_cells
	end

	def grid
		@grid
	end

	def shot(x, y)
		off_grid(x-1 ,y-1)
		grid[x-1][y-1].check_for_hit!
	end

	def deploy(x, y, boat)

		counter = boat.size

		while counter > 0 do
			self.place_boat(x+counter, y, boat)
			counter -= 1
		end
	end


	def place_boat(x, y, boat)
		off_grid(x, y)
		grid[x][y].content=(boat)
	end

	def off_grid(x, y)
		raise "That square is off the grid" if x > 9 || y > 9
	end

end