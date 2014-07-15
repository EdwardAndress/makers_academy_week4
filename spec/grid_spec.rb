require 'grid'

describe Grid do

	let(:eddys_grid) 	{ Grid.new(cell) }
	let(:cell) {double :cell, check_for_hit!: :nil, content: "Destroyer"}
	let(:cell2) {double :cell2, check_for_hit!: :nil}
	let(:submarine) {double :submarine}
	
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
			eddys_grid.grid[2][2]=cell2
			expect(cell2).to receive(:check_for_hit!)
			eddys_grid.shot(3, 3)
		end

		it 'can be used to place boats on the grid' do
			eddys_grid.grid[2][2]=cell2
			expect(cell2).to receive(:content).with("Destroyer")
			eddys_grid.place_boat(2, 2, "Destroyer")
		end

	end

	context 'game parameters' do

		it 'will not let a user place a boat outside of the grid' do
			expect{eddys_grid.place_boat(19, 64, "Destroyer")}.to raise_error(RuntimeError)
		end

		it 'will not allow a player to place a shot outside of the grid' do
			expect{eddys_grid.shot(11,11)}.to raise_error(RuntimeError)
		end

		it 'will translate a user input into the array indices' do
			eddys_grid.grid[1][3]=cell2
			expect(cell2).to receive(:check_for_hit!)
			eddys_grid.shot(2,4)
		end

		it 'will automate horizontal placement of a boat' do
			eddys.grid.deploy(1, 1, submarine)
			expect(eddys_grid.grid[1][1]).to eq submarine
		end
	end

end