require './lib/cell'
#require 'wrapper'

class Grid

#include Wrapper

	def initialize
		@grid= Array.new(10){Array.new(10)}
		@grid.map!{|internal_array|internal_array.map!{|cell| cell=Cell.new }}
	end

	def grid
		@grid
	end

	def shot(row, col)
		#off_grid(row-1 ,col-1)
		grid[row-1][col-1].check_for_hit!
	end

	def deploy(boat, row, col, direction)

		counter = boat.size

		if direction == "horizontal"
			col-=1
			while counter > 0 do
				col += counter
				place_boat(row, col, boat)
				col -= counter
				counter -= 1
			end
		else 
			row-=1
			while counter > 0 do
				row += counter
				place_boat(row, col, boat)
				row -= counter
				counter -= 1
			end
		end
		
	end


	def place_boat(row, col, boat)
		off_grid(row, col)
		grid[row][col].content=(boat)
	end

	def off_grid(row, col)
		raise "That square is off the grid" if row > 9 || col > 9
	end


end