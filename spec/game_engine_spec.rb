require 'game_engine'

describe 'game_engine' do
	
	context 'starts game' do

		xit 'initialises 2 players' do 
			start_game
			expect(player1.class).to eq Player
			expect(player2.class).to eq Player
		# deferred to discuss
			
		end

		it 'allows a player place his or her boats on the grid' do
			player1 = Player.new
			expect(player1.grid).to receive(:deploy).with(:submarine, 1, 2, :vertical)
			place_a_boat(player1)
		end

	end	



end