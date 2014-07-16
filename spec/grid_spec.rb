require 'grid'

describe Grid do

	let(:eddys_grid) 			{ Grid.new }
	let(:deployment_grid)	{Grid.new}
	let(:cell) 						{double :cell, check_for_hit!: :nil, content: "Destroyer"}
	let(:cell2) 					{double :cell2, check_for_hit!: :nil, content: "submarine"}
	let(:cell3) 					{double :cell3, check_for_hit!: :nil, content: "submarine"}
	let(:cell4) 					{double :cell4, check_for_hit!: :nil, content: "submarine"}

	let(:submarine) {double :submarine, size: 3}
	
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
			expect(cell2).to receive(:content=).with("Destroyer")
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
			eddys_grid.grid[1][3] = cell2
			expect(cell2).to receive(:check_for_hit!)
			eddys_grid.shot(2,4)
		end

	end

	context 'boat placement'

		it 'will automate horizontal placement of a boat' do
			deployment_grid.grid[1][1]=cell2
			deployment_grid.grid[1][2]=cell3
			deployment_grid.grid[1][3]=cell4
			expect(cell4).to receive(:content=).with(submarine)
			expect(cell2).to receive(:content=).with(submarine)
			expect(cell3).to receive(:content=).with(submarine)
			deployment_grid.deploy(submarine, 1, 1, "horizontal")
		end

		it 'will automate vertical placement of a boat' do

			deployment_grid.grid[1][1]=cell2
			deployment_grid.grid[2][1]=cell3
			deployment_grid.grid[3][1]=cell4
			expect(cell4).to receive(:content=).with(submarine)
			expect(cell2).to receive(:content=).with(submarine)
			expect(cell3).to receive(:content=).with(submarine)
			deployment_grid.deploy(submarine, 1, 1, "vertical")

		end

		it 'will not let a user place a boat if any of the squares already have a boat' do
			
		end

		it 'will not let a user place a boat if it will go off the board' do
			deployment_grid.deploy(submarine, 1, 9, "horizontal")
			deployment_grid.grid[1][1]=cell2
			expect{deployment_grid.deploy(submarine, 1, 1, "horizontal")}.to raise_error(RuntimeError)
			expect(cell2).not_to receive(:content=)
		end

end