# require './lib/cell'

class Cell;end

class Grid

	def initialize
		@grid = Array.new(10, Array.new(10){  Cell.new })
	end

	def grid
		@grid
	end

end