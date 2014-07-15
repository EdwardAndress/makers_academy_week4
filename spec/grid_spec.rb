require 'grid'

describe Grid do

	let(:eddys_grid) 	{ Grid.new(cell) }
	let(:cell) {double :cell, hit_the_boat: :nil, content: "Destroyer"}
	
	context 'create grid' do

		it 'is an Array' do
			expect(eddys_grid.grid.is_a?(Array)).to be true
		end

		it 'contains 10 arrays' do
			expect(eddys_grid.grid.count).to eq 10
		end

		it 'it contains 100 elements in total' do  
			expect(eddys_grid.grid.flatten.count).to eq 100
		end

		it ' each element in the primary array is also an array' do 
			eddys_grid.grid.each do |row|
				expect(row.is_a?(Array)).to be true
			end	
		end

		it 'has 100 cell objects' do
			nicolas_grid = Grid.new
			nicolas_grid.grid.flatten.each do |cell|
				expect(cell.class).to eq Cell
			end
		end

	end

	context 'transfer player inputs' do 
		
		it 'takes a shot' do
			expect(eddys_grid.grid[1][1]).to receive(:hit_the_boat)
			eddys_grid.shot(1, 1)
		end

		it 'can be used to place boats on the grid' do
			expect(eddys_grid.grid[1][1]).to receive(:content).with("Destroyer")
			eddys_grid.place_boat(1, 1, "Destroyer")
		end

	end

	context 'game parameters' do

		it 'will not let a user place a boat outside of the grid' do
			expect{eddys_grid.place_boat(19, 64, "Destroyer")}.to raise_error(RuntimeError)
		end

		it 'will not allow a player to place a shot outside of the grid' do
			expect{eddys_grid.shot(11,11)}.to raise_error(RuntimeError)
		end

	end

end