require 'wrapper'

describe Wrapper do

let(:my_grid){Grid.new}
let(:boat)	 {double :boat,size: 4}
	context 'players board' do

		it 'prints out water squares as "| |"' do
			expect(my_grid.display_blank_squares).to eq "| |"
		end

		it 'prints out ship squares as "|S|"'do
			expect(my_grid.transform_ship_squares).to eq("|S|")
		end

		it 'does not print a water square if a ship is in that cell' do		
			my_grid.deploy(boat, 0, 0, "horizontal")
			transformed = my_grid.display_blank_squares
			expect(transformed[0][0]).not_to eq("| |")
		end

		it 'does not print a ship square if the cell is water' do 
			transformed = my_grid.transform_ship_squares
			expect(transformed[0][0]).not_to eq("|S|")
		end

		it 'does arranges the owners board' do
	
			my_grid.deploy(boat, 0, 0, "horizontal")
			transformed = my_grid.display_current_players_board
			expect(transformed[0][0]).to eq("|S|")
			expect(transformed[0][1]).to eq("|S|")
			expect(transformed[1][0]).to eq("| |")
		end

		it 'prints out the players board' do 
			expect(my_grid).to receive(:puts).with('| || || || || || || || || || |').exactly(10).times

			my_grid.print_board(my_grid.display_current_players_board)
		end

	end
	context'opponent board' do
		it 'prints out a water square that has been hit as "|M|"' do 
		expect(my_grid.transform_misses).to eq("|M|")
		end
		
		it' does not print a ship square if the cell has not been hit' do
			my_grid.deploy(boat,0,0,"horizontal")
			transformed = my_grid.display_opponents_board
			expect(transformed[0][0]).to eq("| |")
		end

	end
end