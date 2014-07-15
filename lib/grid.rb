require './lib/cell'

class Grid

	def initialize
		# @grid ||= []
		# 10.times do
		# 	@grid << ([Cell.new] * 10)
		# end

		# This (and the old version)
		# puts the same new cell in many locations
		# the exact same cell object!
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