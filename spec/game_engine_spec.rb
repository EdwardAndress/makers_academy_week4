require 'game_engine'

describe 'game_engine' do
	
	context 'starts game' do

		it 'initialises 2 players' do 
			expect(player1.class).to eq Player
			expect(player2.class).to eq Player
			start_game
		end

	end	



end