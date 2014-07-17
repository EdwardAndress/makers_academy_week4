require 'game_engine'

describe 'game_engine' do

	let(:game){Game.new}
	let(:player){Player.new}
	
	context 'starts game' do

		it 'initialises 2 players' do
			game = Game.new
			expect(game.player1).to be_a Player
			expect(game.player2).to be_a Player
		end

		it 'allows a player place his or her boats on the grid' do
			allow(game).to receive(:gets).and_return('1', '1', 'vertical')
			expect(game).to receive(:puts).with("Where would you like to position #{player.fleet.first}")
			game.prompt_for_boat_deployment(player)
		end

		it 'takes user input for boat deployment' do
			row = "1"
			col = "1"
			orientation = "vertical"
			expect(game).to receive(:gets).and_return("1", "1", "vertical")
			game.get_coordinates(player)
		end

		it 'places the boat with coordinates' do
			row = "1"
			col = "1"
			orientation = "vertical"
			expect(game.player1.grid).to receive(:deploy).with("sub", 1,1, "vertical")
			game.player1.grid.deploy("sub", 1, 1, "vertical")
		end

		it 'prompts the player for shot coordinates' do
			expect(game).to receive(:puts).with("Take a shot!")
			allow(game).to receive(:gets).and_return('1','2')
			game.prompt_for_shot(player)
		end

		it 'takes user input for shots' do
			expect(game).to receive(:gets).and_return('1', '2')
			game.get_shot_coordinates(player)
		end

		it 'uses user input to make a shot' do
			expect(game).to receive(:gets).and_return('1','2')
			expect(player.grid).to receive(:shot).with(1,2)
			game.get_shot_coordinates(player)
		end

	end	

	context 'takes turns' do
		it 'makers players take turns until the game is over' do
			
		end
	end



end