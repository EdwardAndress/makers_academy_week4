require 'wrapper'
require 'grid'

describe Wrapper do


	let(:my_grid) {Grid.new}
	let(:boat) {double :boat, size: 3, hit!: 1}


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

	  		
	it 'does not print a ship square if the cell has not been hit' do
		my_grid.deploy(boat,0,0,"horizontal")
		transformed = my_grid.display_opponents_board
		expect(transformed[0][0]).to eq("| |")
	end

	it 'prints an "M" in the cells where a miss has been registered' do
		my_grid.shot(0,0)
		transformed = my_grid.display_opponents_board
		expect(transformed[0][0]).to eq("|M|")
	end

	it "prints an 'X' in the cells where a boat have been hit" do
		my_grid.deploy(boat, 0, 0, "horizontal")
		my_grid.shot(0,0)
		transformed = my_grid.display_opponents_board
		expect(transformed[0][0]).to eq("|X|")

	end


end
	  