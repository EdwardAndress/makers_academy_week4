require './lib/player'

class Game
	attr_reader :player1, :player2

	def initialize
		@player1 = Player.new
		@player2 = Player.new
	end

	def prompt_for_boat_deployment(player)
		puts "Where would you like to position #{player.fleet.first}"
		get_coordinates(player)
	end

	def get_coordinates(player)
		row = gets.chomp.to_i
		col = gets.chomp.to_i
		player.grid.deploy(player.fleet.shift, row, col, "vertical")
	end

end
