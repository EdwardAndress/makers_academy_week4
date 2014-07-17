['grid', 'ship'].each {|r| require_relative r }

class Player

	attr_reader :grid, :fleet

	def initialize(grid=Grid.new)
			@grid = grid
			@fleet=[submarine = Submarine.new, cruiser = Cruiser.new, aircraft_carrier = Aircraft_carrier.new, battleship = Battleship.new, destroyer = Destroyer.new]
	end

end

