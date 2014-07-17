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
			orientation = gets.chomp
			player.grid.deploy(player.fleet.shift, row, col, orientation)
		end


	def prompt_for_shot(player)
		puts 'Take a shot!'
		get_shot_coordinates(player)
	end

	def get_shot_coordinates(player)
		row = gets.chomp.to_i
		col = gets.chomp.to_i
		player.grid.shot(row, col)
	end

	def take_turns
		until no_boats  do 
			#
		end
	end
###  The Player positions his boats
# def place_boats(player)
# 	player.print_board(display_current_players_board)
	
# 	while !player.fleet.empty?
# 	prompt_for_boat_deployment(player)
# 	player.print_board(display_current_players_board)

# 	end
# end

# while condition
	
# end

end
