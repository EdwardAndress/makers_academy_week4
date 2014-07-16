require './lib/player'

class Game
	attr_reader :player1, :player2

	def initialize
		@player1 = Player.new
		@player2 = Player.new
	end

	def prompt_for_boat_deployment
		puts "Where would you like to position #{@fleet.first}"
	end
end
