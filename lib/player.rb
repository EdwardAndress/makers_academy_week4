require 'ship'
class Player

	attr_reader :grid, :fleet

	def initialize(grid)
			@grid = grid
			@fleet=[submarine = Submarine.new, cruiser = Cruiser.new, aircraft_carrier = Aircraft_carrier.new, battleship = Battleship.new, destroyer = Destroyer.new]
	end

end


=begin
	def place_this_boat_at(boat,row,col,direction)
		grid.deploy(boat,row,col,direction)
	end

	def shoot_to(coordinate_1,coordinate_2)
		grid.shot(coordinate_1, coordinate_2)
	end
=end