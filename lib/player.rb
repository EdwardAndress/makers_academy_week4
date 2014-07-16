require_relative 'grid'

class Player

	attr_reader :grid

	def initialize(grid=Grid.new)
		@grid = grid
	end
	
	def place_this_boat_at(boat,row,col,direction)
		grid.deploy(boat,row,col,direction)
	end

	def shoot_to(coordinate_1,coordinate_2)
	end




end