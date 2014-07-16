require 'engine'

	describe Engine  do
		it 'initialize the game with two players' do
			engine = Engine.new

			expect(engine).not_to be_ready_to_play

			engine.set_player1_name = 'Name1'
			engine.set_player2_name = 'Name2'
			
			expect(engine).to be_ready_to_play		
		end		

		xit' has a player 1' do
			player1=double :player
			expect(engine.player_1).to eq player1 
		end






	end