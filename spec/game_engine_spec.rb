require 'game_engine'

describe 'game_engine' do

	let(:game){Game.new}
	
	context 'starts game' do

		it 'initialises 2 players' do
			game = Game.new
			expect(game.player1).to be_a Player
			expect(game.player2).to be_a Player
		end

		it 'allows a player place his or her boats on the grid' do
			player1 = Player.new
			@fleet = ["submarine", "destroyer"]
			expect(game).to receive(:puts).with("Where would you like to position #{@fleet.first}")
			game.prompt_for_boat_deployment
		end

	end	



end