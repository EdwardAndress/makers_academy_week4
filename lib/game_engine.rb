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


	def prompt_for_shot_at(player)
		puts 'Take a shot!'
		get_shot_coordinates(player)
	end

	def get_shot_coordinates(player)
		row = gets.chomp.to_i
		col = gets.chomp.to_i
		player.grid.shot(row, col)
	end

	def play
		system "clear"
		loop_deploy(player1)
		system "clear"
		loop_deploy(player2)
		system "clear"
		shooting_loop
	end


	def loop_deploy(player)
		puts "Player #{player} boat deployment"
		player.grid.print_board(player.grid.display_current_players_board)
		while !player.fleet.empty?
			prompt_for_boat_deployment(player)
			player.grid.print_board(player.grid.display_current_players_board)
		end
	end

	def shooting_loop
		while !player1.grid.all_boats_sunken? && !player2.grid.all_boats_sunken?
			puts "Player one's turn"
			player1.grid.print_board(player2.grid.display_opponents_board)
			prompt_for_shot_at(player2)
			player2.grid.print_sunk_boats
			gets
			system "clear"
			return "Player 1 WINS!!" if player2.grid.all_boats_sunken?
			puts "Player two's turn"
			player2.grid.print_board(player1.grid.display_opponents_board)
			prompt_for_shot_at(player1)
			player2.grid.print_sunk_boats
			gets
			system "clear"
			return "Player 2 WINS!!" if player1.grid.all_boats_sunken?
		end
	end


end
