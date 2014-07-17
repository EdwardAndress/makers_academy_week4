require 'wrapper'

describe Wrapper do

let(:my_grid){Grid.new}

	context 'players board' do

		it 'prints out water squares as "| |"' do
			transformed = my_grid.transform_water_squares
			expect(transformed[0][0]).to eq("| |")
		end

		it 'prints out ship squares as "|S|"'do
			boat= double :boat, size: 4
			my_grid.deploy(boat, 0, 0, "horizontal")
			transformed = my_grid.transform_ship_squares
			expect(transformed[0][0]).to eq("|S|")
		end

		it 'does not print a water square if a ship is in that cell' do
			boat= double :boat, size: 4
			my_grid.deploy(boat, 0, 0, "horizontal")
			transformed = my_grid.transform_water_squares
			expect(transformed[0][0]).not_to eq("| |")
		end

		it 'does not print a ship square if the cell is water' do 
			transformed = my_grid.transform_ship_squares
			expect(transformed[0][0]).not_to eq("|S|")
		end

		it 'does print the board to the owner' do
			boat= double :boat, size: 4
			my_grid.deploy(boat, 0, 0, "horizontal")
			transformed = my_grid.display_my_grid
			expect(transformed[0][0]).to eq("|S|")
			expect(transformed[0][1]).to eq("|S|")
			expect(transformed[1][0]).to eq("| |")
		end

	end
	context'opponent board' do
		xit 'prints out a water square that has been hit as "|M|"' do 
			transformed = my_grid.transform_misses
			expect(transformed[0][0]).to eq("|M|")
		end


	end
end